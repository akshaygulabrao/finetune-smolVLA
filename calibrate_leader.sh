USER="ox"
REPO_PATH="/Users/$USER/Documents/hackathon-14jun25/"
cp /Users/$USER/.cache/huggingface/lerobot/calibration/teleoperators/so101_leader/leader.json 
/Users/ox/miniconda3/envs/lerobot/bin/python -m lerobot.calibrate \
    --teleop.type=so101_leader \
    --teleop.port=/dev/tty.usbmodem58FA0963261 \
    --teleop.id=leader

cp /Users/$USER/.cache/huggingface/lerobot/calibration/teleoperators/so101_leader/leader.json $REPO_PATH