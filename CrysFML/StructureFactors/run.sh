#!/bin/sh

PROGRAM_EXE="../build/calc_sfac"
CFL_FILE="diamond"
SIN_THETA_LAMBDA=0.8

cd "${0%/*}/data"
$PROGRAM_EXE $CFL_FILE $SIN_THETA_LAMBDA

read -p "Press any key to exit..."
exit 0
