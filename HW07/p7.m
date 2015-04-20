% Error Detection
% CSE1010 Project 7, Fall 2012
% William Dickson
% 11/07/2012
% TA: Levon Nazaryan
% Section: 009L
% Instructor: Jeffrey A. Meunier
clc   % clear command window
clear % clear all variables

err_prob = 0.1;
desired_par = 1;
reseedRand
c = getChar;
b = char2bin(c);

b_appended = appendParity(b,desired_par);
[b_noise,n] = addNoise(b_appended,err_prob);
check = checkParity(b_noise,desired_par);

disp('Original transmitted bit vector:')
disp(b_appended)
fprintf('Number of flipped bits: %g\n',n)
disp('Received bit vector:')
disp(b_noise)
if check == 0
    disp('Error Detected')
else
    disp('No Errors Detected')
end
fprintf('Received Character: %c\n',bin2char(b_noise(1:8)))
    