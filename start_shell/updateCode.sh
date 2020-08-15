#!/bin/bash
cd ~/v2v_exp-gps-ctrl-thu-
echo 'a' | sudo -S rm -rf ./v2v_exp/ #DANGEROUS ！！DO NOT！！ xiajiba delete file 
sleep 1
#git clone -b dev https://gitee.com/tsinghua-iDLab/v2v_exp.git
git clone https://gitee.com/tsinghua-iDLab/v2v_exp.git
