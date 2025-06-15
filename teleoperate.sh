USER="ox"
CALIBRATION_PATH="/Users/${USER}/Documents/hackathon-14jun25/"
/Users/ox/miniconda3/envs/lerobot/bin/python -m lerobot.teleoperate \
    --teleop.type=so101_leader \
    --teleop.port=/dev/tty.usbmodem58FA0963261 \
    --teleop.id=leader \
    --teleop.calibration_dir=$CALIBRATION_PATH \
    --robot.type=so101_follower \
    --robot.port=/dev/tty.usbmodem5A680096771 \
    --robot.id=follower \
    --robot.calibration_dir=$CALIBRATION_PATH \
    --robot.cameras="{ front: {type: opencv, index_or_path: 0, width: 1920, height: 1080, fps: 30}}" \
    --display_data=True


