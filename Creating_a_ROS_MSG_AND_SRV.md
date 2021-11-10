## Introduction to msg and srv
* msg:描述ROS信号的txt文件，他们被习惯与形成各类不同语言的源代码
* srv:描述服务的文件，包括两个部分，a request and a response
  
* msg在msg路径下
* srv在srv路径下

1. msg 包含字段类型和字段名
   1. 字段类型如下代码所示
```
int8, int16, int32, int64 (plus uint*)
float32, float64
string
time, duration
other msg files
variable-length array[] and fixed-length array[C] 
```
* msg:example 
```
  Header header
  string child_frame_id
  geometry_msgs/PoseWithCovariance pose
  geometry_msgs/TwistWithCovariance twist
```

* srv:example
```
int64 A   request
int64 B   request
---
int64 Sum  response
```

2. Using msg
2.1 Creating msg:
```
$ roscd beginner_tutorials
$ mkdir msg
$ echo "int64 num" > msg/Num.msg
 也可以额外增加内容
string first_name
string last_name
uint8 age
uint32 score
<build_depend>message_generation</build_depend>
  <exec_depend>message_runtime</exec_depend>


# Do not just add this to your CMakeLists.txt, modify the existing text to add message_generation before the closing parenthesis
find_package(catkin REQUIRED COMPONENTS
   roscpp
   rospy
   std_msgs
   message_generation
)

catkin_package(
  ...
  CATKIN_DEPENDS message_runtime ...
  ...)

add_message_files(
  FILES
  Num.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

最后在CATIN_WS中 CATKIN_MAKE
```

## Using rosmsg
```
$ rosmsg show beginner_tutorials/Num 使用这个命令来看见rosmsg 命令

也可以不使用报名，如果你忘了的话
```

## Using srv
```
$ roscd beginner_tutorials
$ mkdir srv

roscp 顾名思义就是cp 就是面向ros包的

$ roscp [package_name] [file_to_copy_path] [copy_path]
$ roscp rospy_tutorials AddTwoInts.srv srv/AddTwoInts.srv

package.xml
  <build_depend>message_generation</build_depend>
  <exec_depend>message_runtime</exec_depend>

CMakeList.txt
# Do not just add this line to your CMakeLists.txt, modify the existing line
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)

# add_service_files(
#   FILES
#   Service1.srv
#   Service2.srv
# )

add_service_files(
  FILES
  AddTwoInts.srv
)
```

## Using rossrv
```
$ rossrv show <service type>
```
```
$ rossrv show beginner_tutorials/AddTwoInts

不指定包名字
$ rossrv show AddTwoInts
```