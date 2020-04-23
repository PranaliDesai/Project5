# Project5_Home_Service_Robot

To build
```
cd catkin_ws
catkin_make
```
To run

Terminal 1
```
source devel/setup.bash
cd src/scripts
./test_slam.sh
```

Terminal 2
```
source devel/setup.bash
cd src/scripts
./test_navigation.sh
```

Terminal 3
```
source devel/setup.bash
cd src/scripts
./test_pick_objects.sh
```

Terminal 4
```
source devel/setup.bash
cd src/scripts
./test_add_marker.sh
```

Terminal 5
```
source devel/setup.bash
cd src/scripts
./test_home_service.sh
```

Brief Information about the project -

The project uses the slam gmapping package to map the environment and amcl package to localize. This two packages are used to perform the home service opperation to mimic the picking up and placing an object which is shown by a marker. The marker published subscribes to the odom value of the robot to check if the robot has reached to the marker position or not. Once it does it is picked up and thus disappears and the robot now travles to the drop off position, where the marker is published to mimic drop off action. 
