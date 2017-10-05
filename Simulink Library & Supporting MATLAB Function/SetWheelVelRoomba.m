function SetWheelVelRoomba(serPort, rightWheelVel, leftWheelVel )

try    
    rightWheelVel = min( max(1000* rightWheelVel, -500) , 500);
    leftWheelVel = min( max(1000* leftWheelVel, -500) , 500);
    
    fwrite(serPort, [145]);  
    fwrite(serPort,rightWheelVel, 'int16'); 
    fwrite(serPort,leftWheelVel, 'int16');  
catch
    disp('WARNING:  function did not terminate correctly.  Output may be unreliable.')
end
