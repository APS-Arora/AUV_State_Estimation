function [ del_y,H,R ] = DVLModel( DVLInput,X_cap,IMUInput )
%DVLModel Sensor Model for Doppler Velocity Log(DVL)
%   This Model computes Measurement Residual, Measurement Matrix and
%   Measurement Noise Covariance from the sensor input and present
%   navigation state for the Pressure Sensor.
%% Computation of Required Parameters for Sensor Estimate
Rt2p_cap=RotMat(X(4),1)*RotMat(X(5),2)*RotMat(X(6),3);
omega_t2p_cap=IMUInput(4:6)-X_cap(13:15)-Rt2p_cap*earth_rate;
%% Computing Velocity Estimate in DVL frame from Navigation State
DVLtransVel=beam_dir_mat'*X_cap(7:9);
DVLrotVel=diag(beam_dir_mat'*crossProductMatrix(omega_t2p_cap)*head_offset_mat);
hx_cap=DVLtransVel+DVLrotVel;
%% Computing the Output of the Model
del_y=DVLInput-hx_cap;
H=[zeros(4,6),beam_dir_mat',zeros(4,3),cross(beam_dir_mat,head_offset_mat)'];
R=0;
end

