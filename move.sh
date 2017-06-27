#!/bin/bash

set -ev

i=$(cat /etc/bird/comm/iteration)
echo "iteration: # ${i}"
/etc/bird/comm/bgpdecorate.py $i | tee /etc/bird/comm/statics.conf
echo $(( ${i} + 1 )) | tee /etc/bird/comm/iteration

i=$(cat /etc/bird/comm/nyan-iteration)
echo "nyan iteration: # ${i}"
/etc/bird/comm/nyan.py $i | tee /etc/bird/comm/statics-nyan.conf
echo $(( ${i} + 1 )) | tee /etc/bird/comm/nyan-iteration


date
birdc configure
