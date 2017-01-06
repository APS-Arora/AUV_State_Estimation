function newState=propagateNavState(prevState,IMUInput)
dt=IMUInput(7);
predState=prevState+changeNavState(prevState,IMUInput)*dt;
corrState=prevState+changeNavState(predState,IMUInput)*dt;
newState=(predState+corrState)/2;
end