# FineTuning Smol-VLA for better performance

## Getting Started
We are using lerobot as a git submodule so you need to:

```bash
cd <project_root>
git submodule update init --recursive
uv add lerobot/ --dev
uv add feetech-servo-sdk
```
The device ID is a unique identifier for the servo bus adapter used to control the motors. The find_port.py 
returns a **<device_id>** which you will need.
```bash
uv run /Users/ox/Documents/hackathon-14jun25/lerobot/lerobot/find_port.py
```


Debugging motors (checking if it is connected) is faster if you use Feetech-tuna library.

```bash
cd <project_root>/Feetech-tuna
python3 -m venv tuna_env
.\tuna_env\Scripts\activate
pip install -r requirements.txt
python tuna.py <device_id>
> list
```

```bash
cd <project_root>/lerobot

uv run python -m lerobot.calibrate \
--robot.type=so101_follower \
--robot.port=<device_id> \
--robot.id=a_follower

uv run python -m lerobot.setup_motors \
    --robot.type=so101_follower \
    --robot.port=<device_id>
```


## Troubleshooting
An issue I had is that I accidentally disconnected/connected the power while the data cable was still inside. This causes voltage spikes and destroyed 1 servo bus adapter. Don't make the same mistake that I made.
