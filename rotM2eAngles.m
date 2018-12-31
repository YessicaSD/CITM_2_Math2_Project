function [alpha,teta,phi] = rotM2eAngles(matrix)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
teta= -asind(matrix(3,1));
alpha = atan2d(matrix(3,2)/cosd(teta), matrix(3,3)/cosd(teta));
phi= atan2d(matrix(2,1)/cosd(teta),matrix(1,1)/cosd(teta));
if(mod(teta,90)==0)
    alpha=0;
    phi=0;
end
end

