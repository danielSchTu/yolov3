#!/bin/bash
#wget -r https://github.com/ultralytics/yolov3/releases/download/v9.6.0/yolov3-tiny.pt
# 
python train.py --img 416 --batch 16 --epochs 500 --patience 0 --data ./pcb.yml --hyp runs/evolve/exp10/res.yaml --weights ./yolov3-tiny.pt --cfg models/yolov3-tiny.yaml --cache ram
# python train.py --evolve --epochs 10 --img 416 --patience 0 --batch 16 --data ./pcb.yml --weights ./yolov3-tiny.pt --cfg models/yolov3-tiny.yaml --cache ram