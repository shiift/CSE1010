function [Dxs,Dys] = accelerateBodies(Xs,Ys,Dxs,Dys,Masses)
% Given the x and y positions of the bodies as well as the current
% velocities (Dxs, Dys) and their masses (radii) this program calculates
% all the accelerations of the bodies by using the accelerateBody on each
% body
% Use: accelerateBodies(Xs,Ys,Dxs,Dys,Masses)
    for numBodies = 1:length(Masses)
        [Dxs(numBodies),Dys(numBodies)] = accelerateBody(numBodies,Xs,Ys,Dxs,Dys,Masses);
    end
end