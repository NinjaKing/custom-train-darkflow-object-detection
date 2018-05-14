#!/bin/bash

### create data folder
mkdir data
cd data/
mkdir VOC

# get all VOC data
wget https://pjreddie.com/media/files/VOCtrainval_11-May-2012.tar
wget https://pjreddie.com/media/files/VOCtrainval_06-Nov-2007.tar
#wget https://pjreddie.com/media/files/VOCtest_06-Nov-2007.tar
tar xf VOCtrainval_11-May-2012.tar
tar xf VOCtrainval_06-Nov-2007.tar
#tar xf VOCtest_06-Nov-2007.tar

cp -r VOCdevkit/VOC2007/JPEGImages VOC
cp -r VOCdevkit/VOC2012/JPEGImages VOC
cp -r VOCdevkit/VOC2007/Annotations VOC
cp -r VOCdevkit/VOC2012/Annotations VOC

cd ../

# copy new cfg file
cp cfg/tiny-yolo-voc-car.cfg cfg/yolo-voc-car.cfg ../cfg/

# copy new label file
cp labels.txt ../

# return main dir and run training

cd ../
#flow --model cfg/tiny-yolo-voc-car.cfg --load train-new/tiny-yolo-voc.weights --train --dataset "train-new/data/VOC/JPEGImages" --annotation "train-new/data/VOC/Annotations" --gpu 0.9 --epoch 1

flow --model cfg/yolo-voc-car.cfg --train --dataset "train-new/data/VOC/JPEGImages" --annotation "train-new/data/VOC/Annotations" --gpu 0.9 --epoch 1 
#--batch 16 --trainer "adam" --gpuName "/gpu:0,1,2,3"


# fix bug
# export LD_PRELOAD=/home/syht/anaconda3/lib/libstdc++.so.6.0.21
