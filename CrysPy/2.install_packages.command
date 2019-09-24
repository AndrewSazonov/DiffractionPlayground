#!/bin/sh
clear

CURRENT_DIR="$(dirname "$0")"
VENV_DIR=$CURRENT_DIR/.python-venv

echo "*** go to current dir: $CURRENT_DIR"
cd $CURRENT_DIR

echo "*** activate virtual environment: $VENV_DIR"
source $VENV_DIR/bin/activate

echo "*** upgrade pip"
pip install --upgrade pip

echo "*** install scipy"
pip install scipy

echo "*** install numpy"
pip install numpy

echo "*** install pyyaml"
pip install pyyaml

echo "*** install Jupyter inside the environment"
pip install jupyter

echo "*** install CrysPy"
pip install cryspy
git clone --single-branch --branch master https://github.com/ikibalin/cryspy
mv cryspy cryspy-master

read -p "Press any key to exit..."
exit 0
