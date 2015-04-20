function [Xs,Ys] = moveBodies(Xs,Ys,Dxs,Dys)
% Changes the Xs and Ys values by Dxs and Dys respectively
% Use: moveBodies(Xs,Ys,Dxs,Dys)
    Xs = Xs + Dxs;
    Ys = Ys + Dys;
end