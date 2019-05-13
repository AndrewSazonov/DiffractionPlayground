#!/bin/sh

# Program
PROGRAM_SOURCE="source/Calc_Sfac.f90"
PROGRAM_EXE="build/calc_sfac"

# Compiler Name
COMP="gfortran"

# Debug mode
DEBUG="nodeb"

# Compilation Options
if [ $DEBUG = "deb" ]
then
    OPT="-c -g"
else
    OPT="-c -O"
fi

# External Libraries Options
INC="-I$CRYSFML"
LIB="-L$CRYSFML"
LIBSTATIC="-lcrysfml"
LIBDYNAMIC="-lcrysfml"

# Compilation Process
cd "${0%/*}"
$COMP $OPT $PROGRAM_SOURCE $INC
$COMP *.o  -o $PROGRAM_EXE $LIB $LIBSTATIC

# Clean
rm -rf *.o *.mod

read -p "Press any key to exit..."
exit 0
