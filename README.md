# Setup
```sh
pyenv virtualenv 3.11.4 "$(basename $PWD)"
pyenv local "3.11.4/envs/$(basename $PWD)"
python -m pip install -U pip
pip install -r requirements.txt
```
