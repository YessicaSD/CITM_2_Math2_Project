function [rotationMatrix] = eAngles2rotM(alpha,teta,phi)
%eAngles2rotM rotates in the specified euler angles
cosAlpha=cosd(alpha);
sinAlpha = sind(alpha);

cosTeta=cosd(teta);
sinTeta = sind(teta);

cosPhi=cosd(phi);
sinPhi = sind(phi);

rotationMatrix=[cosTeta*cosPhi, cosPhi*sinTeta*sinAlpha-cosAlpha*sinPhi, cosPhi*cosAlpha*sinTeta+sinPhi*sinAlpha;
                cosTeta*sinPhi, sinPhi*sinTeta*sinAlpha+cosAlpha*cosPhi, cosAlpha*sinPhi*sinTeta-cosPhi*sinAlpha;
                      -sinTeta,                        cosTeta*sinAlpha,                        cosTeta*cosAlpha];
end

