function [angleD, VectorU] = rotMat2Eaa(rotationMatrix)
angleD = acosd((trace(rotationMatrix)-1)/2);
Ux= (rotationMatrix-rotationMatrix')/2*sind(angleD);
VectorU=zeros(3,1);
VectorU(1)= Ux(3,2);
VectorU(2)= Ux(1,3);
VectorU(3)= Ux(2,1);
end

