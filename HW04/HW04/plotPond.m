function plotPond(pondRadius)
  % Plots the pond
  % Use: plotPond(pondRadius)
    theta=linspace(0,2*pi,100);
    x=pondRadius*sin(theta);
    y=pondRadius*cos(theta);
    plot(x,y)
end