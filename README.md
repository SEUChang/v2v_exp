# v2v_exp
==Chongqing v2v exp==

目前有三个workspace， 底层控制，gps驱动，THU队列控制算法

底层控制节点在原有基础上添加了一个适配器，实现控制命令转换(*待测试)*

gps节点的输出格式也进行了调整，具体可见pdf.

```cpp
roslaunch ant_driver ant_driver.launch//base control
/* control test - by thu */
source install/setup.bash // 请注意在 ***/v2v_exp/ 路径下执行该命令
roslaunch start ctrl_test.launch.launch
//file path :v2v_exp/ install / share / start / launch/
```