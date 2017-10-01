# MacRoombaSimulink
```
This Simulink library is created to control iRobot Roomba create with Roo WiFi module installed.
The ip address for the WiFi module is 10.0.0.1.
```
#IR Sensors State Block#
This block displays the state of the 6 IR range sensors located on the bumper. State is a 1 by 6 vector [Left, FrontLeft, CenterLeft, CenterRight, FrontRight, Right]. A value of 0 means no object in range, 1 indicates an object is in range.
