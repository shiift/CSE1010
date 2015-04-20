function [dx,dy] = accelerateBody(b,Xs,Ys,Dxs,Dys,Masses)
% Given a body (number), the x and y coordinates, the Masses(Radii), and the change
% in x and y due to velocity this caclulates the acceleration of the body
% due to the other bodies and adds it to the velocity.
% Use: accelerateBody(b,Xs,Ys,Dxs,Dys,Masses)
    for bodyNum = 1:length(Masses)
        if bodyNum ~= b
            [fx,fy] = calculateForce(b,bodyNum,Xs,Ys,Masses);
            ax = fx/Masses(b);
            ay = fy/Masses(b);
            dx = Dxs(b) + ax;
            dy = Dys(b) + ay;
        end
    end
end