cd ..

#rand mag snip grasp synflow
for pruner in synflow
    do 
    for sparsity in 0.1 0.5 0.7 0.9 0.95 0.97 0.99 0.999
        do
        for outchannels in 54 
            do
                CUDA_VISIBLE_DEVICES=3 python run_exps.py --model SingleConvNet --pruner $pruner --seed 2 --prune_epochs 100  --sparsity $sparsity --out_channels $outchannels --dataset mnist --is_wandb --is_pruning
            done
        done
    done
