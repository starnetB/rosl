* rqt_console and rqt_logger_level for debugging 
* roslaunch for startging many nodes at once

1. Prerequisites rqt and turtlesim package
```
$ sudo apt-get install ros-<distro>-rqt ros-<distro>-rqt-common-plugins ros-<distro>-turtlesim
```

2 .Using rqt_console and rqt_logger_level
* rqt_console 用于输出日志信息
* rqt_logger_level 用于设定警报级别
  
```
rosrun rqt_console rqt_console
$ rosrun rqt_logger_level rqt_logger_level
```

## 2.1 Quick Note about logger Level
```
优先级
Fatal
Error
Warn
Info
Debug
```

## 2.2 Using roslaunch
rosLaunch 用于同时启动多个node
```
$ roslaunch [package] [filename.launch]
$ roscd beginner_tutorials
$ cd ~/catkin_ws
$ source devel/setup.bash
$ roscd beginner_tutorials
$ mkdir launch
$ cd launch
```

## 2.3 创建一个Launch File文件
```
<launch>
    <group ns="turtlesim1">
        <node pkg="turtlesim" name="sim" type="turtlesim_node"/>
    </group>

    <group ns="turtlesim2">
        <node pkg="turtlesim" name="sim" type="turtlesim_node"/>
    </group>

    <node pkg="turtlesim" name="mimic" type="mimic">
        <remap from="input" to="turtlesim1/turtle1"/>
        <remap from="output" to="turtlesim2/turtle1"/>
    </node>
</launch>
```

## 2.4 The Launch File Explained
```
<launch> 启动标签
```
```
<group ns="turtlesim1">
   <node pkg="turtlesim" name="sim" type="turtlesim_node"/>
</group>
  
<group ns="turtlesim2">
   <node pkg="turtlesim" name="sim" type="turtlesim_node"/>
</group>
这一块代码提供两个命令空间，以及名字sim，都是turlesim_node 节点，由于命名空间不一样，所以不会有命名冲突
```
```
<node pkg="turtlesim" name="mimic" type="mimic">
  <remap from="input" to="turtlesim1/turtle1"/>
  <remap from="output" to="turtlesim2/turtle1"/>
</node>

# 重映射操作，创作一个模拟节点
将主题input 映射到turtlesim1 上
将主题output 映射到turtlesim2 上
这个重命名将导致urtlesim2 to mimic turtlesim1. 
```