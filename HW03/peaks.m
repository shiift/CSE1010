% Tone Encoding and Decoding
% CSE1010 Project 3, Fall 2012
% Date: 9/20/2012
% Name: William Dickson
% Section: 009L
% TA: Levon Nazaryan
% Instructor: Jeffrey A. Meunier

function [freq_values] = peaks(freq, power)
    Left = [0 power(1:end-1)];
    Right = [power(2:end) 0];
    % Determine when the power is greater than both the value to the left
    % and right, then get the frequency of those 'peak' locations
    locations = power > Left & power > Right;
    freq_values = freq(locations);
    freq_values = round(freq_values);
end