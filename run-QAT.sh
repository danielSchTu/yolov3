#!/bin/bash
source env/bin/activate
# python train.py --img 416 --batch 16 --epochs 500 --data ./pcb.yml --cfg models/yolov3-tiny-QAT.yaml --cache ram
# python train.py --img 416 --patience 0 --batch 16 --epochs 500 --data ./pcb.yml --weights ./yolov3-tiny-QAT-mod.pt --cfg models/yolov3-tiny-QAT.yaml --cache ram
# python train.py --img 416 --patience 0 --resume ./runs/train/exp4/weights/epoch_90.pt --batch 16 --epochs 500 --data ./pcb.yml --weights ./yolov3-tiny-QAT-mod.pt --cfg models/yolov3-tiny-QAT.yaml --cache ram
# python train.py --evolve --resume --epochs 10 --img 416 --patience 0 --batch 16 --data ./pcb.yml --weights ./yolov3-tiny-QAT-mod.pt --cfg models/yolov3-tiny-QAT.yaml --cache ram
# python train.py --img 416 --resume --batch 16 --patience 0 --epochs 500 --data ./pcb.yml --weights ./runs/train_res/exp41/weight/last.pt --cfg models/yolov3-tiny-QAT.yaml --cache ram
# python train.py --img 416 --batch 16 --adam --patience 0 --epochs 500 --data ./pcb.yml --weights ./yolov3-tiny-QAT-mod.pt --cfg models/yolov3-tiny-QAT.yaml --cache ram
# python train.py --img 416 --batch 16 --hyp data/hyps/hyp.scratch-low.yaml --epochs 300 --data ./pcb.yml --weights ./yolov3-tiny-QAT-mod.pt --cfg models/yolov3-tiny-QAT.yaml --cache ram

############### MATHIAS ##########################
# No hyp search
# python train.py --img 416 --patience 0 --batch 16 --epochs 500 --data ./pcb.yml --weights ./yolov3-tiny-QAT-mod.pt --cfg models/yolov3-tiny-QAT.yaml --cache ram

# Main Tests with hyp search 
# python train.py --img 416 --resume ./runs/train/exp20/weights/epoch_90.pt --patience 0 --batch 16 --epochs 500 --hyp runs/evolve/exp/res.yaml --data ./pcb.yml --weights ./yolov3-tiny-QAT-mod.pt --cfg models/yolov3-tiny-QAT.yaml --cache ram
# python train.py --img 416 --patience 0 --batch 16 --epochs 500 --hyp runs/evolve/exp/res.yaml --data ./pcb.yml --weights ./yolov3-tiny-QAT-mod.pt --cfg models/yolov3-tiny-QAT.yaml --cache ram


############### COCO #############################
python train.py --img 416 --patience 0 --batch 16 --resume --epochs 101 --data ./data/coco.yaml --weights ./yolov3-tiny-QAT-mod.pt --cfg models/yolov3-tiny-QAT.yaml --cache ram
# python train.py --img 416 --patience 0 --batch 16 --epochs 100 --weights ./yolov3-tiny-QAT-mod.pt --cfg models/yolov3-tiny-QAT.yaml --cache ram