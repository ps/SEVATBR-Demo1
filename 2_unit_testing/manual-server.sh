#!/bin/bash
echo "Running test for server manual update"
pushd ../1_code/SEVATBR/manual/
make clean
make
./test
