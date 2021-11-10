# ROS Services
* 服务类似与一个服务器，他接受request并且回复以response

# Using rosservice
rosservice 用于操作ROS的客户端与服务
```
rosservice list         print information about active services
rosservice call         call the service with the provided args
rosservice type         print service type
rosservice find         find services by service type
rosservice uri          print service ROSRPC uri
```

## 2.1 rosservice list
```
$ rosservice list
```
```
/clear
/kill
/reset
/rosout/get_loggers
/rosout/set_logger_level
/spawn
/teleop_turtle/get_loggers
/teleop_turtle/set_logger_level
/turtle1/set_pen
/turtle1/teleport_absolute
/turtle1/teleport_relative
/turtlesim/get_loggers
/turtlesim/set_logger_level
```

## 2.2 rosservice type
```
rosservice type /clear
    std_srvs/Empty

```
* 以上命令是空的，意味着服务调用不需要任何参数

## rosservice call
* 手动调用服务
```
rosservice call [service] [args]
$ rosservice call /clear
```

### 下面我们操作一些有参数的服务类型
```
$ rosservice type /spawn | rossrv show
    float32 x
    float32 y
    float32 theta
    string name
    ---
    string name
```
以下命令增加一个新的Turtle 给予一个初始位置与方向
```
$ rosservice call /spawn 2 2 0.2 ""
```

# Using rosparam
* 这个命令允许你存储和维护ROS 参数服务器上的命令
  * 参数服务器可以使用YAML文件来获取参数

```
rosparam set            set parameter
rosparam get            get parameter
rosparam load           load parameters from file
rosparam dump           dump parameters to file
rosparam delete         delete parameter
rosparam list           list parameter names
```

## rosparam list 
```
$ rosparam list
```
  ```
    /rosdistro
    /roslaunch/uris/host_nxt__43407
    /rosversion
    /run_id
    /turtlesim/background_b
    /turtlesim/background_g
    /turtlesim/background_r
  ```
## rosparam set and get
```
rosparam set [param_name]
rosparam get [param_name]

rosparam set /turtlesim/background_r 150

rosservice call /clear

$ rosparam get /turtlesim/background_g 

$ rosparam get /
```

## rosparam dump and rosparam load
```
rosparam dump [file_name] [namespace]
rosparam load [file_name] [namespace]
```
* 备份文件
```
$ rosparam dump params.yaml
```
* 加载文件
```
$ rosparam load params.yaml copy_turtle
$ rosparam get /copy_turtle/turtlesim/background_b
```
