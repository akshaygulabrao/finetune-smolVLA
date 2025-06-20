#!/bin/bash

USER="ox"
REPO_PATH="/Users/${USER}/Documents/hackathon-14jun25/"
HF_USER=oxhatestrading
HF_CACHE=/Users/${USER}/.cache/huggingface/lerobot/${HF_USER}
REPO_ID="peasant0"
DATASET_ROOT=$HF_CACHE/${REPO_ID}/
CALIBRATION_PATH=$PWD

echo $CALIBRATION_PATH

rm -rf $DATASET_ROOT
uv run python -m lerobot.record \
  --teleop.type=so101_leader \
  --teleop.port=/dev/tty.usbmodem58FA0963261 \
  --teleop.id=leader \
  --robot.type=so101_follower \
  --robot.port=/dev/tty.usbmodem5A680096771 \
  --robot.id=follower \
  --robot.cameras="{ front: {type: opencv, index_or_path: 0, width: 1920, height: 1080, fps: 30}}" \
  --display_data=true \
  --dataset.repo_id=${HF_USER}/${REPO_ID} \
  --dataset.num_episodes=50 \
  --dataset.single_task="Look around and explore." \
  --dataset.reset_time_s=5 \
  --dataset.push_to_hub=false
