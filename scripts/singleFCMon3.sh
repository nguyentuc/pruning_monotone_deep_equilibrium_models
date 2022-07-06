cd ..

# rand mag snip grasp synflow
for pruner in snip
    do 
    for sparsity in 0.1 0.5 0.7 0.9 0.95 0.97 0.99 0.999
        do
        for outdim in 87
            do
                CUDA_VISIBLE_DEVICES=2  python run_exps.py --model SingleFcNet --seed 2  --pruner $pruner --sparsity $sparsity --out_dim $outdim --dataset mnist --is_wandb --is_pruning
            done
        done
    done
