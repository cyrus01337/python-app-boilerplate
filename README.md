# Python App Boilerplate

![The definition of "boilerplate"](https://i.imgur.com/0xEmAP6.png)

This is a template repository used to simplify the above, as setting this up for every project adds up overtime.

## Usage

```sh
git clone --template https://github.com/cyrus01337/python-app-boilerplate.git .
```
```sh
gh repo create -p cyrus01337/next-app-boilerplate --public --clone $(basename $PWD) && \
    gh repo clone $(basename $PWD) .
```
