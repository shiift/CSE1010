function circle(x,y,radius,color)
% Draws a circle at x,y having given radius and color.
% Use: circle(x,y,radius,'color')
    theta = 0:.01:2*pi;
    X = cos(theta)*radius + x;
    Y = sin(theta)*radius + y;
    plot(X,Y,color)
end