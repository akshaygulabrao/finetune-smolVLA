# FineTuning Smol-VLA for robust pick and place
![Robust Pick and Place](media/IMG_1428.JPG)


## Getting Started

Tested on macOS and uv python.

We are using lerobot as a git submodule so you need to:

```bash
cd <project_root>
git submodule update --init --recursive
cd <project_root>/lerobot
uv pip install -e .
uv sync --extra feetech
source .venv/bin/activate
```

## Teleoperation
Use the teleoperate script for teleoperation.