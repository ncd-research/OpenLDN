# OpenLDN: Learning to Discover Novel Classes for Open-World Semi-Supervised Learning

## Results

|                        | OpenLDN-MixMatch  | OpenLDN-UDA               |
| ---------------------- | ----------------- | ------------------------- |
| CIFAR-100 paper        | 60.1              | 59.3                      |
| CIFAR-100 reproduction | Best: - / Mean: - | Best: 60.21 / Mean: 59.71 |




## Training
```shell
# For CIFAR10 50% Labels and 50% Novel Classes 
python3 train.py --dataset cifar10 --lbl-percent 50 --novel-percent 50 --arch resnet18

# For CIFAR100 50% Labels and 50% Novel Classes 
python3 train.py --dataset cifar100 --lbl-percent 50 --novel-percent 50 --arch resnet18

For training on the other datasets, please download the dataset and put under the "name_of_the_dataset" folder and put the train and validation/test images under "train" and "test" folder. After that, please set the value of data_root argument as "name_of_the_dataset".

# For Tiny ImageNet 50% Labels and 50% Novel Classes
python3 train.py --dataset tinyimagenet --lbl-percent 50 --novel-percent 50 --arch resnet18

# For ImageNet-100 50% Labels and 50% Novel Classes
python3 train.py --dataset imagenet100 --lbl-percent 50 --novel-percent 50 --arch resnet50

# For Oxford-IIIT Pet 50% Labels and 50% Novel Classes
python3 train.py --dataset oxfordpets --lbl-percent 50 --novel-percent 50 --arch resnet18

# For FGVC-Aircraft 50% Labels and 50% Novel Classes
python3 train.py --dataset aircraft --lbl-percent 50 --novel-percent 50 --arch resnet18

# For Stanford-Cars 50% Labels and 50% Novel Classes
python3 train.py --dataset stanfordcars --lbl-percent 50 --novel-percent 50 --arch resnet18

# For Herbarium19 50% Labels and 50% Novel Classes
python3 train.py --dataset herbarium --lbl-percent 50 --novel-percent 50 --arch resnet18

# For SVHN 10% Labels and 50% Novel Classes
python3 train.py --dataset svhn --lbl-percent 10 --novel-percent 50 --arch resnet18
```

## Citation
```
@inproceedings{rizve2022openldn,
Title={OpenLDN: Learning to Discover Novel Classes for Open-World Semi-Supervised Learning},
Author={Mamshad Nayeem Rizve and Navid Kardan and Salman Khan and Fahad Shahbaz Khan and Mubarak Shah},
booktitle={European Conference on Computer Vision},
Year={2022}
```
