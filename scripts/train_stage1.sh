DATASET_DIR=train_data/train_tiny

# Stage 1: Training Full Image Colorization
mkdir ./checkpoints/coco_full
cp ./checkpoints/siggraph_retrained/latest_net_G.pth ./checkpoints/coco_full/
python train.py --stage full --name coco_full --sample_p 1.0 --niter 1 --niter_decay 1 --load_model --lr 0.0005 --model train --fineSize 256 --batch_size 16 --display_ncols 3 --display_freq 1600 --print_freq 1600 --train_img_dir $DATASET_DIR