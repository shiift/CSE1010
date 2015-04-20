% Tone Encoding and Decoding
% CSE1010 Project 3, Fall 2012
% Date: 9/20/2012
% Name: William Dickson
% Section: 009L
% TA: Levon Nazaryan
% Instructor: Jeffrey A. Meunier

function [freq power] = timeToFreq(signal, samplesPerSec)
   count = length(signal);
   y = fft(signal, count);
   power = y.*conj(y)/count;
   power = power(1:floor(count/2));
   freq = samplesPerSec/count*(0:(floor(count/2)-1)); 
end