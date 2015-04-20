% Tone Encoding and Decoding
% CSE1010 Project 3, Fall 2012
% Date: 9/20/2012
% Name: William Dickson
% Section: 009L
% TA: Levon Nazaryan
% Instructor: Jeffrey A. Meunier

function [f1,f2] = nameToFreq( key_name )
    if key_name == '0'
        f1 = 941;
        f2 = 1336;
    elseif key_name == '1'
        f1 = 697;
        f2 = 1209;
    elseif key_name == '2'
        f1 = 697;
        f2 = 1336;
    elseif key_name == '3'
        f1 = 697;
        f2 = 1477;
    elseif key_name == '4'
        f1 = 770;
        f2 = 1209;
    elseif key_name == '5'
        f1 = 770;
        f2 = 1336;
    elseif key_name == '6'
        f1 = 770;
        f2 = 1477;
    elseif key_name == '7'
        f1 = 852;
        f2 = 1209;
    elseif key_name == '8'
        f1 = 852;
        f2 = 1336;
    elseif key_name == '9'
        f1 = 852;
        f2 = 1477;
    elseif key_name == 'A' || key_name == 'a'
        f1 = 697;
        f2 = 1633;
    elseif key_name == 'B' || key_name == 'b'
        f1 = 770;
        f2 = 1633;
    elseif key_name == 'C' || key_name == 'c'
        f1 = 852;
        f2 = 1633;
    elseif key_name == 'D' || key_name == 'd'
        f1 = 941;
        f2 = 1633;
    elseif key_name == '*'
        f1 = 941;
        f2 = 1209;
    elseif key_name == '#'
        f1 = 941;
        f2 = 1477;
    else
        disp('The key you entered does not exist on the DTMF keypad.')
        pause
    end
end