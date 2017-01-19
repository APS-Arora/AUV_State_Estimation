function [ del_y,H,R ] = PressureSensorModel( PSInput,X_cap )
%PressureSensorModel Summary of this function goes here
%   Detailed explanation goes here
hx_cap=PSScale'*(X_cap(1:3)+Rp2t_cap*PSPos)+PSOffset
del_y=PSInput-hx_cap;
H=[PSScale',-PSScale'*crossProductMatrix(Rp2t_cap*PSOffset),zeros(1,9)];
R=PSNoiseVar;
end

