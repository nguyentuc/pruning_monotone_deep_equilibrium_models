cd ../..
#rand mag snip grasp synflow
for pruner in snip
    do 
    for sparsity in 0.1 0.5 0.7 0.9 0.95 0.97 0.99 0.999
        do
            CUDA_VISIBLE_DEVICES=1 python run_exps.py --model SingleConvNet --pruner $pruner --sparsity $sparsity --dataset shvn --is_pruning
        done
    done
