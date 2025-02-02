torchrun --nproc_per_node 8 -m open_clip_train.main \
    --save-frequency 1 \
    --save-most-recent \
    --zeroshot-frequency 1 \
    --train-data '/path/to/laion-400m' \
    --dataset-type webdataset \
    --lr "2.24e-5" \
    --beta1 0.9 \
    --beta2 0.95 \
    --warmup 3571 \
    --wd 0.2 \
    --batch-size 896 \
    --aug-cfg scale='(0.4, 1.0)' color_jitter='(0.32, 0.32, 0.32, 0.08)' color_jitter_prob=0.8 gray_scale_prob=0.2 \
    --epochs 1 \
    --train-num-samples 131072000 \
    --workers 6 \
    --model ViT-L-16-CL16-GAP \
    --pretrained '/path/to/ckpt' \
    --precision 'amp_bf16' \
    --ddp-static-graph \
    --local-loss \
    --gather-with-grad \
    --grad-checkpointing \
    --log-every-n-steps 293 \
    --seed 0 \
    --logs ./logs/ \
    --imagenet-val '/path/to/imagenet/val'