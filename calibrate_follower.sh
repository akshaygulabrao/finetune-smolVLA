USER=ox
REPO_PATH="/Users/$USER/Documents/hackathon-14jun25/"
/Users/ox/miniconda3/envs/lerobot/bin/python -m lerobot.calibrate \
    --robot.type=so101_follower \
    --robot.port=/dev/tty.usbmodem5A680096771 \
    --robot.id=follower

cp /Users/$USER/.cache/huggingface/lerobot/calibration/robots/so101_follower/follower.json $REPO_PATH