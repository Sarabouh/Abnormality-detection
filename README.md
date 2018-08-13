# Abnormality detection through video analytics



## Object detection

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

### Prerequisites

* Install yolov3 from this [website](https://pjreddie.com/darknet/yolo/)
* Clone this [github repository](https://github.com/cesanta/frozen) in the same directory as darknet to get the json/struct parser,no dependencies needed.
* In case of a problem while making the project, check this [pull request](https://github.com/cesanta/frozen/pull/21)  

### Installing

Move to the darknet directory and execute the following commands:

```
wget https://github.com/Sarabouh/Abnormality-detection/blob/master/OD/shell.sh
mkdir json
touch json/frame.txt && touch json/labels.json

```
* Go to the shell.sh script and change the path by the dataset's path, modify script if necessary.
* Replace "src/image.c" & "src/image.h" using these commands in order to save the final labels that yolo outputs into a json format file

```
cd src/
rm image.c && rm image.h
wget https://github.com/Sarabouh/Abnormality-detection/blob/master/OD/image.c && wget https://github.com/Sarabouh/Abnormality-detection/blob/master/OD/image.h
```

Enable OpenCV & GPU in the darknet makefile and run make.

## Scene semantic recognition

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

### Prerequisites

Clone this [github repository]( https://github.com/CSAILVision/places365) after installing the recommended dependencies.

### Installing

Move to the places365 directory and execute the following commands:

```
rm run_placesCNN_unified.py
wget https://github.com/Sarabouh/Abnormality-detection/blob/master/scene%20recognition/run_placesCNN_unified.py && wget https://github.com/Sarabouh/Abnormality-detection/blob/master/scene%20recognition/shell.sh
mkdir data && mkdir json
touch json/labels.json
```
Change the path in the shell.sh script with the dataset's path.


## Generating the labels

Run the labeling for both scene recognition and OD in separate terminals by running these commands in each:

```
chmod +x shell.sh
./shell.sh
```


## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc

