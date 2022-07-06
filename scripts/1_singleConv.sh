cd ..

for pruner in rand
    do 
    for sparsity in 0.1 0.5 0.7 0.9 0.95 0.97 0.99 0.999
        do
        for outchannels in 54
            do
                CUDA_VISIBLE_DEVICES=1 python run_exps.py --model SingleConvNet --seed 2 --pruner $pruner --sparsity $sparsity --out_channels $outchannels --dataset mnist --is_wandb --is_pruning
            done
        done
    done
