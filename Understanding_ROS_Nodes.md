# Understanding ROS Nodes
nodes:ROS可通讯的可执行单元  
message:ROS消息媒体 
Topic:ROS消息主题  
Master:ROS服务的名字  服务应该是一种功能
rosout:ros输出流  
roscore：master+rosout+parameter的总称 

* rospy= python client library
* roscpp= C++ client library
  
* roscore命令
```
... logging to ~/.ros/log/9cf88ce4-b14d-11df-8a75-00251148e8cf/roslaunch-machine_name-13039.log
Checking log directory for disk usage. This may take awhile.
Press Ctrl-C to interrupt
Done checking log file disk usage. Usage is <1GB.

started roslaunch server http://machine_name:33919/
ros_comm version 1.4.7

SUMMARY
======

PARAMETERS
 * /rosversion
 * /rosdistro

NODES

auto-starting new master
process[master]: started with pid [13054]
ROS_MASTER_URI=http://machine_name:11311/

setting /run_id to 9cf88ce4-b14d-11df-8a75-00251148e8cf
process[rosout-1]: started with pid [13067]
started core service [/rosout]
```

## Using rosnode
* rosnode list
* rosnode info /rosout
```
------------------------------------------------------------------------
Node [/rosout]
Publications:
 * /rosout_agg [rosgraph_msgs/Log]

Subscriptions:
 * /rosout [unknown type]

Services:
 * /rosout/get_loggers
 * /rosout/set_logger_level

contacting node http://machine_name:54614/ ...
Pid: 5092
```

```
$ rosrun [package_name] [node_name]
```
```
$ rosrun turtlesim turtlesim_node
```
```
$ rosnode ping my_turtle
```