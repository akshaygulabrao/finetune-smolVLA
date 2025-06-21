HF_USER=oxhatestrading
export TOKENIZERS_PARALLELISM=true
cd lerobot && python lerobot/scripts/train.py \
  --policy.path=lerobot/smolvla_base \
  --dataset.repo_id=${HF_USER}/peasant0 \
  --batch_size=32 \
  --steps=20000 \
  --log_freq=100 \
  --output_dir=outputs/train/my_smolvla \
  --job_name=my_smolvla_training \
  --policy.device=mps
