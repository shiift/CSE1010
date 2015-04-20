% Error Correction
% CSE1010 Project 8, Fall 2012
% Date: 12/1/2012
% Name: William Dickson
% Section: 009L
% TA: Levon Nazaryan
% Instructor: Jeffrey A. Meunier
clc   % clear command window
clear % clear all variables

ERROR_PROB = .01;
DESIRED_PARITY = 0;
reseedRand
string = input('Enter a string: ', 's');

blocks = string2blocks(string);
txframes = appendParityToBlocks(blocks,DESIRED_PARITY);
rxframes = transmitFrames(txframes,ERROR_PROB);
[repframes errFrames] = repairFrames(rxframes,DESIRED_PARITY);
repblocks = stripFrames(repframes);
rxstring = blocks2string(repblocks);

disp('recieved string = ')
disp(rxstring)
disp('frames containing errors:')
disp(errFrames)