## Training custom object detection using darkflow: car detection

### Dependencies
Python3.6, Tensorflow 1.4, OpenCV 3, darkflow

### Getting started
1. Install darkflow , clone the repo then installing follow the instruction from the root repository of [darkflow](https://github.com/thtrieu/darkflow):
	```
	git clone https://github.com/thtrieu/darkflow
	```
2. Clone this repo, then copy folder `train-new` into darkflow folder:
	```
	git clone https://github.com/NinjaKing/custom-train-darkflow-object-detection
	cp -r custom-train-darkflow-object-detection/train-new darkflow/
	```
### Training model

```
cd darkflow/train-new
./train_car_yolo.sh
```
