python main.py \
    --input_paths ${input_path} \
    --output_dirname ${output_dirname} \
    --proof_pool_dirname ${proof_pool_dirname} \
    --proof_gen_url "https://api.deepseek.com" \
    --proof_rate_url "https://api.deepseek.com" \
    --proof_gen_with_self_eval "https://api.deepseek.com" \
    --model "deepseek-reasoner" \
    --infer_script "generate" \
    --n_best_proofs_to_sample 1 \
    --n_proofs_to_refine 1 \
    --n_agg_trials 4 \
    --n_parallel_proof_gen 1 \
    --n_verification_per_proof 1 \
    --proof_gen_num_processes 1 \
    --proof_verification_num_processes 1 \
    --batch_size 1 \
    --skip_meta_verification \
    --start_round 1 \
    --max_rounds 1

set +f