# evGP2020

_Gabriel Rizk_
_05/05/2020_


publicly available ROS package that activates Lidar, INS, and a turtlesim 

ReadMe files are available for each individual package within each package of the catkin_ws.

The packages within catkin_ws/src are as follows:

1) cepton_ros - this package interfaces with the Cepton Lidar, and launches an rviz sim that displays the lidar's 3D point cloud
2) inertial_sense_ros - this package interfaces with the Inertial Sense INS unit reads out IMU and INS data over topics
3) turtlesim_cleaner - this package interfaces with the turtlesim and sensors to allow control of the turtlesim with the sensors

	turtlesim simulation package can be downloaded in a Ubuntu 16.04 terminal window
	as follows: sudo apt-get install ros-kinetic-turtlesim
	OR it can be downloaded from: https://github.com/ros/ros_tutorials/tree/noetic-devel/turtlesim
  
4) sys - This is the system package. The command: "roslaunch sys sys.launch" launches the master ROS node along with the launch files from the cepton_ros, inertial_sense_ros, turtlesim, and turtlesim_cleaner packages, effectively initiating all the required nodes for the interactive simulation 

NOTE: To effectively utilize any of these packages in ROS, user should download ROS kinetic with roscpp & rospy as dependencies. 

All remote control files, meant to be run on a Raspberry Pi, are in the C++ folder.
