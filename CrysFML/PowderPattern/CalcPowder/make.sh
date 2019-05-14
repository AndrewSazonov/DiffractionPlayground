#!/bin/sh

# Program
PROGRAM_SOURCE="source/calc_powder.f90"
PROGRAM_EXE="build/calc_powder"

# Crysfml lib
CRYSFML_LIB="$CRYSFML/GFortran/LibC"

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

# Go to current dir
cd "${0%/*}"

# Create dirs
mkdir -p build

# Compilation Process
$COMP $OPT $PROGRAM_SOURCE $INC
$COMP *.o  -o $PROGRAM_EXE $LIB $LIBSTATIC

# Clean
rm -rf *.o *.mod

read -p "Press any key to exit..."
exit 0
