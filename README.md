love-development-compiler
=========================

Compile and run your love application quickly during development

## What is love-development-compiler ?

love-development-compiler is a simple application used to compile and run love project during delopment

## why use love-development-compiler ?

Running love application during development is a little bit tough task.
It is very easy to run love application using this tool


## How use it?
```bash

git clone https://github.com/ebin123456/love-development-compiler test
cd test

```

Put your Love project folder in test directory. let love project folder name is lp

Now run like this
```bash
python main.py lp
```

you can install love-development-compiler application in your linux machine like this

form test folder
```bash
cp main.py /usr/bin/l2d
chmod 777 /usr/bin/l2d
```
After the installation, you can compile love application like this
```bash
l2d path-to-love-project-folder
```
you can install love-development-compiler application in your windows by clicking setup.exe file in dist
directory

