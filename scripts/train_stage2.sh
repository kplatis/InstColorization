DATASET_DIR=train_data/train_tiny

## Stage 2: Training Instance Image Colorization
mkdir ./checkpoints/coco_instance
cp ./checkpoints/coco_full/latest_net_G.pth ./checkpoints/coco_instance/
python train.py --stage instance --name coco_instance --sample_p 1.0 --niter 1 --niter_decay 1 --load_model --lr 0.0005 --model train --fineSize 256 --batch_size 16 --display_ncols 3 --display_freq 1600 --print_freq 1600 --train_img_dir $DATASET_DIR
