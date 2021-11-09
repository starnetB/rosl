# Creating a ROS Package
catkin包必须包含的文件  
* catkin compliant package.xml 提供一些基本的包信息
* CMakeLists.txt  cmakefile文档
* 每个包必须有自己独立的文件夹，不能多个包共享相同的文件夹
* 
```
 my_package/
    CMakeLists.txt
    package.xml
```

## Packages in a catkin Workspace  

```
包空间
workspace_folder/        -- WORKSPACE
  src/                   -- SOURCE SPACE
    CMakeLists.txt       -- 'Toplevel' CMake file, provided by catkin
    package_1/
      CMakeLists.txt     -- CMakeLists.txt file for package_1
      package.xml        -- Package manifest for package_1
    ...
    package_n/
      CMakeLists.txt     -- CMakeLists.txt file for package_n
      package.xml        -- Package manifest for package_n
```

## 创建一个包空间
* 重点是如何使用 catkin_create_pkg脚本
```
# You should have created this in the Creating a Workspace Tutorial
$ cd ~/catkin_ws/src
```

```
$ catkin_create_pkg beginner_tutorials std_msgs rospy roscpp
beginner_tutorials which depends on std_msgs,roscpp,and rospy
```
```
# This is an example, do not try to run this
# catkin_create_pkg <package_name> [depend1] [depend2] [depend3]
```

## 构建一个工作空间，并且sourcing the setup file 
```
$ cd ~/catkin_ws
$ catkin_make
source devel/setup.bash
```

## 查看自己创建的包的依赖关系
### First-order dependencies
```
rospack depends1 beginner_tutorials
    roscpp
    rospy
    std_msgs
```

* 包的依赖关系可以在package.xml中被发现
  
  ```
  # 查看所有依赖关系
  $ rospack depends beginner_tutorials
    cpp_common
    rostime
    roscpp_traits
    roscpp_serialization
    catkin
    genmsg
    genpy
    message_runtime
    gencpp
    geneus
    gennodejs
    genlisp
    message_generation
    rosbuild
    rosconsole
    std_msgs
    rosgraph_msgs
    xmlrpcpp
    roscpp
    rosgraph
    ros_environment
    rospack
    roslib
    rospy
  ```

## 熟悉你的包的内容
```
# description tag
<description>The beginner_tutorials package</description>
```
```
# 维护人员
maintainer tags
<!-- One maintainer tag required, multiple allowed, one person per tag --> 
<!-- Example:  -->
<!-- <maintainer email="jane.doe@example.com">Jane Doe</maintainer> -->
<maintainer email="user@todo.todo">user</maintainer>
```
```
6.1.3 license tag
<!-- One license tag required, multiple allowed, one license per tag -->
<!-- Commonly used license strings: -->
<!--   BSD, MIT, Boost Software License, GPLv2, GPLv3, LGPLv2.1, LGPLv3 -->
<license>TODO</license>
```
```
build_depend, buildtool_depend, exec_depend, test_depend. 
<?xml version="1.0"?>
   2 <package format="2">
   3   <name>beginner_tutorials</name>
   4   <version>0.1.0</version>
   5   <description>The beginner_tutorials package</description>
   6 
   7   <maintainer email="you@yourdomain.tld">Your Name</maintainer>
   8   <license>BSD</license>
   9   <url type="website">http://wiki.ros.org/beginner_tutorials</url>
  10   <author email="you@yourdomain.tld">Jane Doe</author>
  11 
  12   <buildtool_depend>catkin</buildtool_depend>
  13 
  14   <build_depend>roscpp</build_depend>
  15   <build_depend>rospy</build_depend>
  16   <build_depend>std_msgs</build_depend>
  17 
  18   <exec_depend>roscpp</exec_depend>
  19   <exec_depend>rospy</exec_depend>
  20   <exec_depend>std_msgs</exec_depend>
  21 
  22 </package>
```