# Setup
```sh
git clone --template https://github.com/cyrus01337/python-app-boilerplate.git .
```
```sh
gh repo create -p cyrus01337/next-app-boilerplate --public --clone $(basename $PWD) && \
    gh repo clone $(basename $PWD) .
```
