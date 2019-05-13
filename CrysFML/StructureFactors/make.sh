#!/bin/sh

# Program
PROGRAM_SOURCE="Calc_Sfac.f90"
PROGRAM_EXE="calc_sfac"

# Crysfml path
CRYSFML_LIB="$CRYSFML/GFortran64/LibC"

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
INC="-I$CRYSFML_LIB"
LIB="-L$CRYSFML_LIB"
LIBSTATIC="-lcrysfml"
LIBDYNAMIC="-lcrysfml"

# Compilation Process
$COMP $OPT $PROGRAM_SOURCE $INC
$COMP *.o  -o $PROGRAM_EXE $LIB $LIBSTATIC

# Clean
rm -rf *.o *.mod
