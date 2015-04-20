%------------------------------------------------
% Example 1_1 This program computes the average
% temperature and plots the temperature data.
%
time = [0.0,0.5,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0];
temps = [105,126,119,129,132,128,131,135,136,132,137];
average = mean(temps)
plot (time,temps),title('Temperature Measurements'),
    xlabel('Time, minutes'),
    ylabel('Temperature, degrees F'),grid
%------------------------------------------------