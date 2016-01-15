cmake_minimum_required(VERSION 2.8.3)
project(nexus7_bringup)
find_package(catkin REQUIRED COMPONENTS rospy)

catkin_python_setup()

catkin_package()

install(DIRECTORY launch 
	DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
install(DIRECTORY config 
	DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
install(PROGRAMS  src/nexus7_bringup/imu_to_tf.py 
	DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
