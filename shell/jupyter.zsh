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

deregister-venv() {
    local base_dir="$HOME/Library/Jupyter/kernels/"
    if [[ -z "$1" ]]; then
        cd "$base_dir" || return 1
    else
        # cd "$base_dir/$1" || return 1
        rm -rf "$base_dir/$1" || return 1   # ~/Library/Jupyter
    fi
    # echo "deregister"
}

_deregister-venv_completion() {
  _files -W "$HOME/Library/Jupyter/kernels/" -/
}

compdef _deregister-venv_completion deregister-venv

show_venv() {
    ls ~/Library/Jupyter/kernels
}
