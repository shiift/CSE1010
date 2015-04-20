function s = sendString(a,s)
% This function sends a string one character at a time using the sendChar
% function.
% Use: sendString(a,s)
    fprintf('sendString sending string ')
    disp(s)
    s = [char(length(s)) s];
    for i = 1:length(s)
        sendChar(a,s(i));
    end
    fprintf('sent \n')
end