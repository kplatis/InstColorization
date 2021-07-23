INPUT_DIR=val_data/val_tiny
OUTPUT_DIR=results

python inference_bbox.py --test_img_dir $INPUT_DIR
python validate_fusion.py --niter 1 --niter_decay 0 --name test_fusion --sample_p 1.0 --model fusion --fineSize 256 --test_img_dir $INPUT_DIR --results_img_dir $OUTPUT_DIR