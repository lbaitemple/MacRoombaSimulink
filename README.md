# Roomba Simulink Library
by Tongdi Zhou
```
This Simulink library is created to control iRobot Roomba create with Roo WiFi module installed.
The IP address for the WiFi module is 10.0.0.1. Incorporating a real-time pacer in the Simulink model is recommended.
```

## Main Switch Block
![Main Switch Block](https://github.com/Talisker10/MacRoombaSimulink/blob/master/Figures/Main%20Switch.png)
- This block establishes the link between Simulink and Roomba, and it controls the read/write sequence to Roomba.
- Input 1 will turn on the switch; input 0 will turn off the switch.
- Connect the output **_Control_** to Input **_Control_** on any other blocks.

## IR Sensors State Block
![IR Sensors State Block](https://github.com/Talisker10/MacRoombaSimulink/blob/master/Figures/6%20IR%20Sensor.png)
- This block displays the state of the 6 IR range sensors located on the bumper.
- **_State_** is a 1 by 6 vector [Left, FrontLeft, CenterLeft, CenterRight, FrontRight, Right].
- A value of 0 means no object in range, 1 indicates an object is in range.
- Connect input **_Control_** to output **_Control_** from the Main Switch Block.

## Wheel Control Block
![Wheel Control Block](https://github.com/Talisker10/MacRoombaSimulink/blob/master/Figures/Wheel.png)
- Specify linear velocity of left wheel and right wheel.
- **_RightWheel_**, **_LeftWheelVel_** are in meters/sec between [-0.5, 0.5].
- Connect input **_Control_** to output **_Control_** from the Main Switch Block.

## Example 1
![Example 1](https://github.com/Talisker10/MacRoombaSimulink/blob/master/Figures/Example.png)
In this example, the velocity inputs of the Wheel is manipulated so the Roomba will only rotate. Users can input velocity to the rigth and the left wheels independently. The sensors' state is also displayed.
