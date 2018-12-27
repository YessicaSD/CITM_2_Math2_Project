function  [RotationMatrix] = VecAng2rotMat(vectorU,angleD)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if(norm(vectorU)~=1)
    vectorU = (vectorU/norm(vectorU));
end

I = eye(3);
MatrixEscuisimetric=[0, -vectorU(3),vectorU(2); vectorU(3), 0, -vectorU(1); -vectorU(2),  vectorU(1),0];
RotationMatrix = (I*cosd(angleD) + ( (1-cosd(angleD)) *(vectorU*vectorU')) + sind(angleD)* MatrixEscuisimetric);

end

