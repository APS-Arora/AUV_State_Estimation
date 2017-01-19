function dX_cap=changeNavState(X,imu)
%changeNavState Computes Derivative of State
% Computes Navigation State Derivatives at the given State from IMU
% Measurement Via IMU Mechanisation Equations
%% Computation of Required Parameters
Rt2p_cap=RotMat(X(4),1)*RotMat(X(5),2)*RotMat(X(6),3);
Rp2t_cap=Rt2p_cap';
omega_cap=[1,0,sin(X(5));0,cos(X(4)),-sin(X(4))*cos(X(5));0,sin(X(4)),cos(X(4))*cos(X(5))]; 
g_cap=earth_gravity-earth_rate_mat^2*X(1:3);
%% Implementation of Mechanisation Equations
dX_cap(1:3)=Rp2t_cap*X(7:9);
dX_cap(4:6)=omega_cap\(imu(4:6)-X(13:15)-Rt2p_cap*earth_rate);
dX_cap(7:9)=imu(1:3)-X(10:12)+Rt2p_cap*g_cap-Rt2p_cap*earth_rate_mat*Rt2p_cap*X(7:9)-cross(imu(4:6)-X(13:15),X(7:9));
dX_cap(10:15)=0;
end
