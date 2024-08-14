#!/usr/bin/env bash
set -e

export PATH="$PATH:$HOME/.local/bin"

requirements_files=()

pip install uv
uv venv
source .venv/bin/activate

if [ -f requirements.txt ]; then
    requirements_files+="-r requirements.txt"
fi

for additional_requirements_file in requirements.*.txt; do
    echo "$additional_requirements_file"

    requirements_files+="-r$additional_requirements_file"
done

uv pip install --no-cache --link-mode=copy $requirements_files
pre-commit autoupdate
pre-commit install
