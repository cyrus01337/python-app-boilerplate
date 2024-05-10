#!/usr/bin/env bash
arguments=()

pip install uv
uv venv
source .venv/bin/activate
echo ". .venv/bin/activate" >> $HOME/.bashrc

if [ -f requirements.dev.txt ]; then
    arguments+="-r requirements.dev.txt "
fi

if [ -f requirements.txt ]; then
    arguments+="-r requirements.txt"
fi

uv pip install $arguments
pre-commit autoupdate
pre-commit install
