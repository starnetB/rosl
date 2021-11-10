```
rosrun turtlesim turtlesim_node
rosrun turtlesim turtle_teleop_key # turtle keyboard teleoperation 开启键盘控制node
```

# 下面正式介绍ROS Topics
* 使用rqt_graph 来展示信息发布与接受的过程
```
$ sudo apt-get install ros-<distro>-rqt
$ sudo apt-get install ros-<distro>-rqt-common-plugins

$ sudo apt-get install ros-neotic-rqt
$ sudo apt-get install ros-neotic-rqt-common-plugins
```

就像Mqtt协议一样，系统通过主题来进行通讯 
```
rostopic -h
```
    ```
    rostopic bw     display bandwidth used by topic  # 展示用主题的带宽
    rostopic echo   print messages to screen         # 打印信息到屏幕上
    rostopic hz     display publishing rate of topic     #展示主题的发送率
    rostopic list   print information about active topics #打印激活主题的信息
    rostopic pub    publish data to topic   #发送指定数据到某个主题上
    rostopic type   print topic type     # 展示主题的信息类型
    ```
```
也可以使用tab功能补全
$ rostopic 
bw    echo  find  hz    info  list  pub   type 
```

```
$ rostopic echo /turtle1/cmd_vel #查看主题的信息
```

## Using rostpoic list 
```
$ rostopic list -h
$ rostopic list -v
```

## Using rostopic type
* 返回主题的信息类型
```
rostopic type [topic]
rostopic type /turtle1/cmd_vel
    geometry_msgs/Twist
rosmsg show geometry_msgs/Twist
    geometry_msgs/Vector3 linear
        float64 x
        float64 y
        float64 z
    geometry_msgs/Vector3 angular
        float64 x
        float64 y
        float64 z
```

## Using rostopic pub 
* 手动发送信息
```
rostopic pub [topic] [msg_type] [args]
$ rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 1.8]'

-- 
表示没有 额外操作


rostopic pub /turtle1/cmd_vel 
$ rostopic pub /turtle1/cmd_vel geometry_msgs/Twist -r 1 -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, -1.8]'
```

## Using rostpic hz
rostopic hz [topic]
* 展示主题的发送频率
```
$ rostopic hz /turtle1/pose
$ rostopic type /turtle1/cmd_vel | rosmsg show
```

## Using rqt_plot
```
$ rosrun rqt_plot rqt_plot
```
