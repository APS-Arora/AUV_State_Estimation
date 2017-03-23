addpath(genpath('.'));
global TrueData
TrueData=csvread('GoodSensordata30min.csv',1,0);
X_true=TrueData(:,[8,9,10,11,12,13,2,3,4]);
X_true=[X_true,zeros(size(X_true,1),6)];
X_est=zeros(size(X_true));
ErrorState=X_est;
Sigma=zeros([size(ErrorState),size(ErrorState,2)]);
X_est(1,:)=X_true(1,:);
for j=2:size(X_est,1)
    IMUInput=fetchIMUInput(j);
    
end