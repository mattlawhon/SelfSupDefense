
#! /bin/sh
CUDA_VISIBLE_DEVICES=0,3,4 python cifar10_defense.py --fname test --carmon --eval_only --ssl_model_path models/ssl_model_130.pth --md_path models/cifar10_rst_adv.pt.ckpt --batch-size 100 --contrastive_bs 50 --attack_type adapt > ssl_adapt_output.txt & 
wait; CUDA_VISIBLE_DEVICES=0,3,4 python cifar10_defense.py --fname test --carmon --eval_only --ssl_model_path models/ssl_model_130.pth --md_path models/cifar10_rst_adv.pt.ckpt --batch-size 100 --contrastive_bs 50 --mtl --attack_type adapt > mtl_adapt_output.txt &
