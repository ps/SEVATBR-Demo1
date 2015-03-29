#!/bin/bash
pushd ../1_code/SEVATBR/speech/speech-to-text
make clean
make
./test
