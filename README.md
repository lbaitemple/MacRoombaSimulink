# MacRoombaSimulink
```
This Simulink library is created to control iRobot Roomba create with Roo WiFi module installed.
The ip address for the WiFi module is 10.0.0.1.
```

## Main Switch Block
![Main Switch Block](https://github.com/Talisker10/MacRoombaSimulink/blob/master/Figures/Main%20Switch.png)
- This block establishes the link between Simulink and Roomba, and it control the read/write sequence to Roomba.
- Input 1 will turn on the switch; input 0 will turn off the switch.
- Connect the output **_Control_** to Input **_Control_** on anyother blocks.

## IR Sensors State Block
![IR Sensors State Block](https://github.com/Talisker10/MacRoombaSimulink/blob/master/Figures/6%20IR%20Sensor.png)
- This block displays the state of the 6 IR range sensors located on the bumper
- **_State_** is a 1 by 6 vector [Left, FrontLeft, CenterLeft, CenterRight, FrontRight, Right]
- A value of 0 means no object in range, 1 indicates an object is in range
- Connect input **_Control_** to output **_Control_** from the Main Switch Block.

## Wheel Control Block
![Wheel Control Block](https://github.com/Talisker10/MacRoombaSimulink/blob/master/Figures/Wheel.png)
- Specify linear velocity of left wheel and right wheel
- **_RightWheel_**, **_LeftWheelVel_** are in meters/sec between [-0.5, 0.5]
- Connect input **_Control_** to output **_Control_** from the Main Switch Block.
