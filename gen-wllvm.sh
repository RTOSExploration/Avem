#!/usr/bin/env bash

export PATH=`realpath ../gcc-arm-none-eabi-8-2018-q4-major/bin`:$PATH
make clean
#make -j OptLIB=2 OptSRC=2 all tshow
genbc ../bitcode-db/Avem -c "make -j OptLIB=2 OptSRC=2 all tshow"
