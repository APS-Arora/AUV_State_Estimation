function dX_cap=changeNavState(X,Y)
Rt2p_cap=RotMat(X(6),3)*RotMat(X(5),2)*RotMat(X(4),3);
Rp2t_cap=Rt2p_cap';
omega_cap=[sin(X(5)),-sin(X(6)),0;0,cos(X(6)),0;cos(X(5)),0,1];
g_cap=earth_gravity-earth_rate_mat^2*X(1:3);
dX_cap(1:3)=Rp2t_cap*X(7:9);
dX_cap(4:6)=omega_cap\(Y(4:6)-X(13:15)-Rt2p_cap*earth_rate);
dX_cap(7:9)=Y(1:3)-X(10:12)+Rt2p_cap*g_cap-Rt2p_cap*earth_rate_mat*Rt2p_cap*X(7:9)-cross(Y(4:6)-X(13:15),X(7:9));
dX_cap(10:15)=0;
end
