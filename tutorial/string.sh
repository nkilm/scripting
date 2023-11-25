#! /usr/bin/bash

# AIM - hello.py to hello.ipynb

str="hello.py"

split=(${str//./ })

echo ${split[0]}

echo ${split[0]}".ipynb"