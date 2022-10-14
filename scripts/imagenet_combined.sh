#!/bin/bash
cd ../

data_root="/home/miil/Datasets/GCD/imagenet"

# Execution
nohup python3 base/train-base.py \
  --gpu "3,7" \
  --data-root ${data_root} \
  --split-root cache/split \
  --out results \
  --dataset imagenet100 \
  --lbl-percent 50 \
  --novel-percent 50 \
  --batch-size 480 \
  --lr 1e-2 \
  --split-id split_1 \
  --ssl-indexes cache/split/imagenet100_50_50_split_1.pkl \
  --arch resnet18 \
  >results/imagenet100-train-base.out

nohup python3 closed_world_ssl/train-mixmatch.py \
  --gpu 7 \
  --data-root ${data_root} \
  --split-root cache/split \
  --out results \
  --dataset imagenet100 \
  --lbl-percent 50 \
  --novel-percent 50 \
  --batch-size 480 \
  --epochs 200 \
  --ssl-indexes cache/split/imagenet100_50_50_split_1.pkl \
  --arch resnet50 \
  >results/imagenet100-train-mixmatch.out &

nohup python3 closed_world_ssl/train-uda.py \
  --gpu 3 \
  --data-root ${data_root} \
  --split-root cache/split \
  --out results \
  --dataset imagenet100 \
  --lbl-percent 50 \
  --novel-percent 50 \
  --batch-size 480 \
  --epochs 200 \
  --ssl-indexes cache/split/imagenet100_50_50_split_1.pkl \
  --arch resnet50 \
  >results/imagenet100-train-uda.out &
