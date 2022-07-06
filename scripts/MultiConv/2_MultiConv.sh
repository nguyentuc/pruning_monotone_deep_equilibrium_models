cd ../..
#rand mag snip grasp synflow
for pruner in mag
    do 
    for sparsity in 0.1 0.5 0.7 0.9 0.95 0.97 0.99 0.999
        do
            CUDA_VISIBLE_DEVICES=2 python run_exps.py --model MultiConvNet --pruner $pruner --sparsity $sparsity --seed 1 --dataset shvn  --is_wandb --is_pruning
        done
    done
