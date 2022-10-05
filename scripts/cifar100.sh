#!/bin/bash
cd ../

# User input
echo
echo "* Please type the data-root."
read -r user_input
data_root="${user_input}"

# Execution
python3 train.py \
  --gpu 0 \
  --data-root ${data_root} \
  --split-root cache/split \
  --out results \
  --dataset cifar100 \
  --lbl-percent 50 \
  --novel-percent 50 \
  --arch resnet18
