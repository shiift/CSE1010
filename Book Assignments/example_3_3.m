clc

data = wind_data;

% Determine Monthly Averages
mo_avg = mean(data');
disp('Monthy Averages')
disp(mo_avg');

% Determine Yearly Averages
yr_avg = mean(data);
yr_number = [2005:1:2008];
yr = [yr_number; yr_avg];
disp('--Yearly Averages--')
fprintf('Average for %g was %3.2f.\n',yr)

% Determine Max Point
max_data = max(max(data));
disp('--Overall Maximum Wind Speed--')
fprintf('The overall maximum wind speed from 2005 and 2008 was %g.\n',max_data)