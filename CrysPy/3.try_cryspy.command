#!/bin/sh
clear

CURRENT_DIR="$(dirname "$0")"
VENV_DIR=$CURRENT_DIR/.python-venv

echo "*** activate virtual environment: $VENV_DIR"
source $VENV_DIR/bin/activate

echo "*** go to current dir: $CURRENT_DIR"
cd $CURRENT_DIR

echo "*** try cryspy"
python try_cryspy.py

read -p "Press any key to exit..."
exit 0
