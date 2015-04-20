function plotBodies(Xs,Ys,Masses,color)
% Draws a number of circles equal to length of vector Masses given Xs, Ys and color.
% Use: plotBodies(Xs,Ys,Masses,color)
    numBodies = length(Masses);
    for b = 1:numBodies
        circle(Xs(b),Ys(b),Masses(b),color);
    end
end