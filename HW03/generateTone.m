% Tone Encoding and Decoding
% CSE1010 Project 3, Fall 2012
% Date: 9/20/2012
% Name: William Dickson
% Section: 009L
% TA: Levon Nazaryan
% Instructor: Jeffrey A. Meunier

function tone = generateTone( frequency , samples_sec , tone_length )
    timeDomain = linspace(0, tone_length, tone_length * samples_sec);
    tone = sin(2 * pi * frequency * timeDomain);
    
    tone = tone * 0.5;
end