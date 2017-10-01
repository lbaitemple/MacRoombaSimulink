# MacRoombaSimulink
```
This Simulink library is created to control iRobot Roomba create with Roo WiFi module installed.
The ip address for the WiFi module is 10.0.0.1.
```
**_Warning: This library is a beta version. Two blocks cannot work in the same model. This problem will be solved in the future versions_**


## IR Sensors State Block
- This block displays the state of the 6 IR range sensors located on the bumper
- **_State_** is a 1 by 6 vector [Left, FrontLeft, CenterLeft, CenterRight, FrontRight, Right]
- A value of 0 means no object in range, 1 indicates an object is in range
- Input 1 to **_Switch** to activate the block; Input 0 to **_Switch** to deavtivate the block
- Alway deactivate the block before stop simulation

## Wheel Control Block
- Specify linear velocity of left wheel and right wheel
- **RightWheel**, **LeftWheelVel** are in meters/sec between [-0.5, 0.5]
- Input 0 to **Switch** to deactivate block
- Input 1 to **Switch** to activate block
- Input 2 to **Switch** to pause all motor function
- Always deactivate before end simulation
