#!/bin/sh

PROGRAM_EXE="calc_sfac"
CFL_FILE="diamond"
SIN_THETA_LAMBDA=0.8

cd "${0%/*}"
./$PROGRAM_EXE $CFL_FILE $SIN_THETA_LAMBDA
