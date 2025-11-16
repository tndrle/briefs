#!/bin/bash

set -e

python3 util/create_template.py

# See https://github.com/typst-community/tytanic for more info
tt --use-system-fonts run
tt util clean

python3 util/create_readme.py
