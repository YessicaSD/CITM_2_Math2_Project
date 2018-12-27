function  [RotationMatrix] = VecAng2rotMat(vectorU,angleD)
%VecAng2rotMat Returns a rotation matrix specifiying the euler principal
%axis and angle
% Angle must be in degrees

if(norm(vectorU)~= 1)
    vectorU = (vectorU/norm(vectorU));
end

stoich=[          0, -vectorU(3),  vectorU(2);
         vectorU(3),           0, -vectorU(1);
        -vectorU(2),  vectorU(1),           0];
RotationMatrix = (eye(3)*cosd(angleD) + ( (1-cosd(angleD)) *(vectorU*vectorU')) + sind(angleD)* stoich);

end

