#!/bin/bash
pushd ../1_code/SEVATBR/core/
make clean
make
./test_srvr_stdout
