# FineTuning Smol-VLA for robust pick and place
![Robust Pick and Place](media/IMG_1428.JPG)


## Getting Started

Tested on macOS and uv python.

We are using lerobot as a git submodule so you need to:

```bash
cd <project_root>
git submodule update --init --recursive
uv sync
uv sync --extra feetech
```
The device ID is a unique identifier for the servo bus adapter used to control the motors. The find_port.py 
returns a **<device_id>** which you will need.
```bash
uv run /Users/ox/Documents/hackathon-14jun25/lerobot/lerobot/find_port.py
```

To use the motors, there are 2 steps: (1) Assign a unique ID to each motor using the setup_motors script. (2) Calibrate the ROM of each motor. 
```bash
cd <project_root>/lerobot

uv run python -m lerobot.setup_motors \
    --robot.type=so101_follower \
    --robot.port=<device_id>

uv run python -m lerobot.calibrate \
--robot.type=so101_follower \
--robot.port=<device_id> \
--robot.id=a_follower

uv run python
```

## Troubleshooting

DO NOT disconnect the power cable while the data cable is still plugged in. I accidentally disconnected/connected the power while the data cable was still inside, destroying the servo bus adapter. The adapter isn't destroyed with a 100% probability, so you might be lucky.
