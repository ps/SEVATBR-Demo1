#!/bin/bash
echo "Running test for server manual update"
make clean
make
./test
