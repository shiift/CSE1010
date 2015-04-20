function [fx fy] = calculateForce(body1,body2,Xs,Ys,Masses)
% Given two bodies, the x and y coordinates and the Masses(Radii) this will
% calculate the x and y components of the force between the bodies
% Use: moveBodies(Xs,Ys,Dxs,Dys)
    global G
    dx = Xs(body2)-Xs(body1);
    dy = Ys(body2)-Ys(body1);
    r = sqrt(dx^2 + dy^2);
    if r < Masses(body1) + Masses(body2)
        r = Masses(body1) + Masses(body2);
    end
    
    f = G*Masses(body1)*Masses(body2)/r^2;
    
    angle = atan2(dy, dx);
    fx = f * cos(angle);
    fy = f * sin(angle);