#!/usr/bin/env
arguments=()

if [ -f requirements.dev.txt ]; then
    arguments+="-r requirements.dev.txt "
fi

if [ -f requirements.txt ]; then
    arguments+="-r requirements.txt"
fi

pip install $arguments
