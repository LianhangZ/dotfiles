#!/usr/bin/env bash

init_venv() {
    python3 -m venv .venv || return 1
    source .venv/bin/activate || return 1
    python -m pip install --upgrade pip || return 1
    python -m pip install opencv-python numpy matplotlib ipykernel || return 1
}

delete_venv() {
    deactivate
    rm -rf .venv
    # TO-DO: delete ~/Library/Jupyter/env-name
}
