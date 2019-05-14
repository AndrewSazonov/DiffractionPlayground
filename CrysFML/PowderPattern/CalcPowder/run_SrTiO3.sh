#!/bin/sh

PROGRAM_EXE="calc_powder"
DATA_DIR_NAME="SrTiO3"
CFL_FILE="$DATA_DIR_NAME"

cd "${0%/*}/data/$DATA_DIR_NAME"
../../build/$PROGRAM_EXE $CFL_FILE

read -p "Press any key to exit..."
exit 0
