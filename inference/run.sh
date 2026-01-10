set -f

input_path=../inputs/IMO2025.json,../inputs/CMO2024.json,../inputs/CMO2025.json
# directory to dump results
output_dirname=../myoutputs
# directory to maintain a pool of generated proofs for each evaluated problem
proof_pool_dirname=${output_dirname}/proof_pool

python main.py \
    --input_paths ${input_path} \
    --output_dirname ${output_dirname} \
    --proof_pool_dirname ${proof_pool_dirname} \
    --proof_gen_url "https://api.deepseek.com" \
    --proof_rate_url "https://api.deepseek.com" \
    --proof_gen_with_self_eval "https://api.deepseek.com" \
    --model "deepseek-reasoner" \
    --infer_script "generate" \
    --n_best_proofs_to_sample 32 \
    --n_proofs_to_refine 1 \
    --n_agg_trials 32 \
    --n_parallel_proof_gen 128 \
    --n_verification_per_proof 64 \
    --skip_meta_verification \
    --start_round 1 \
    --max_rounds 16

set +f
