function newState=propagateNavState(prevState,IMUInput)
%propagteNavState Computes New State form Previous State and IMU Measurement
% Propagtes Navigation State by dt in time via IMU Mechanisation Equations
dt=IMUInput(7);
predState=prevState+changeNavState(prevState,IMUInput)*dt;
corrState=prevState+changeNavState(predState,IMUInput)*dt;
newState=(predState+corrState)/2;
end