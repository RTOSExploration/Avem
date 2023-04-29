#!/usr/bin/env bash

make clean

TOOLCHAIN_BIN=$(realpath $RTOSExploration/toolchain/gcc-arm-none-eabi-8-2018-q4-major/bin)
export PATH=$TOOLCHAIN_BIN:$PATH
export LLVM_COMPILER=hybrid
export LLVM_COMPILER_PATH=/usr/lib/llvm-14/bin
export BINUTILS_TARGET_PREFIX=$TOOLCHAIN_BIN/arm-none-eabi
make -j$(nproc) OptLIB=2 OptSRC=2 all tshow CC=wllvm
extract-bc main.elf
