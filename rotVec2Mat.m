function [R] = rotVec2Mat(rotVec)
%rotVec2Mat Returns a matrix with the same rotation as the specified
%rotation vector
% Angle must be in degrees
nr = norm(r);
stoich= [         0, -rotVec(3),  rotVec(2);
          rotVec(3),          0, -rotVec(1);
         -rotVec(2),  rotVec(1),          0];
R = eye(3) * cosd(nr) + ((1 - cosd(nr)) / nr ^ 2) * (r * r') + (sind(nr) / nr) * stoich; 
end

