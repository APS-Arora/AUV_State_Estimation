function [delx_pred,cov_pred]=predictErrorState(X_cap,delx_prev,cov_prev,IMUInput)
%predictErrorState Progates and Predicts Error State from IMU Input
% This is the prediction step of Indirect Kalman Fiter. It predicts the New
% Error State from Old Error State and IMU Process Noise
%% Computation of Required Parameters
dt=IMUInput(7);
Rt2p_cap=RotMat(X_cap(4),1)*RotMat(X_cap(5),2)*RotMat(X_cap(6),3);
Rp2t_cap=Rt2p_cap';
%% The F Matrix
F12=-crossProductMatrix(Rp2t_cap*X_cap(7:9));
F32=Rt2p_cap*(crossProductMatrix(earth_gravity)+earth_rate*(Rp2t_cap*X_cap(7:9))'-dot(earth_rate,Rp2t_cap*X_cap(7:9))*eye(3));
F33=-crossProductMatrix(IMUInput(4:6)-X_cap(13:15))-Rt2p_cap*earth_rate_mat*Rp2t_cap;
F=[zeros(3),F12,Rp2t_cap,zeros(3),zeros(3);
   zeros(3),-earth_rate_mat,zeros(3),zeros(3),-Rp2t_cap;
   zeros(3),F32,F33,-eye(3),-crossProductMatrix(X_cap(7:9))];
F=[F;zeros(6,15)];
%% The G Matrix
G=zeros(15,12);
G(4:6,4:6)=-Rp2t_cap;
G(7:9,1:3)=-eye(3);
G(7:9,4:6)=-crossProductMatrix(X_cap(7:9));
G(10:15,7:12)=eye(6);
%% The Process Noise Input Vector
Q=0;
%% Computation of Propagation Parameters
gamma=expm([-F,G*Q*G';zeros(size(F)),F']*dt);
phi=gamma((length(delx_prev):2*length(delx_prev)-1),(length(delx_prev):2*length(delx_prev)-1))';
Q_d=phi*gamma((1:length(delx_prev)),(length(delx_prev):2*length(delx_prev)-1));
%% Propagating State Here
delx_pred=phi*delx_prev;
cov_pred=phi*cov_prev*phi'+Q_d;
end

