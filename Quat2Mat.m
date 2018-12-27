function [mat] = Quat2Mat(q)
%Quat2Mat: returns a matrix with the same rotation as the specified quaternion
    q = q/norm(q);
    stoich = [    0, - q(4),  q(3);
               q(4),      0, -q(2);
              -q(3),   q(2),     0];
    mat = (q(1)^2 - q(2:4)' * q(2:4)) * eye(3) + 2 * (q(2:4) * q(2:4)') + 2 * q(1) * stoich;
end

