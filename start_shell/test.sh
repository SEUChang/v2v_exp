#!/bin/bash
#cd ~/v2v_exp-gps-ctrl-thu-/v2v_exp
#source ./install/setup.bash
#roslaunch start start_seu_platform.launch 
rosrun config_gps config_gps
sleep 1
gnome-terminal --window -e 'bash -c "roslaunch ant_driver ant_driver.launch; sleep 5; exec bash;"'  --tab -e 'bash -c "cd ~/v2v_exp-gps-ctrl-thu-/Ant_ws/src/rtcm3.2;./main; exec bash;"' 
sleep 1
#gnome-terminal -t “title-name” -x 'bash -c"sh ./test2.sh;exec bash;"'

#cd ~/v2v_exp-gps-ctrl-thu-/v2v_exp
#source ./install/setup.bash
#roslaunch start start_seu_platform.launch 
#gnome-terminal --window -e 'bash -c "echo "111"; exec bash;"' --tab -e 'bash -c "echo "222";exec bash;"'


