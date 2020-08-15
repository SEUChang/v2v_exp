#!/bin/bash

gnome-terminal --window -e 'bash -c "source ~/v2v_exp-gps-ctrl-thu-/v2v_exp/install/setup.bash; roslaunch start start_seu_platform.launch;sleep 5; exec bash;"' 
sleep 5
gnome-terminal --window -e 'bash -c "source ~/v2v_exp-gps-ctrl-thu-/v2v_exp/install/setup.bash; rostopic echo /v2v/data;sleep 5; exec bash;"'   

