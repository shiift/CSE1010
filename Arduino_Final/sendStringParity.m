function s = sendStringParity(a,s)
% This function sends a string one character at a time using the
% sendCharParity function.
% Use: sendStringParity(a,s)
    fprintf('sendString sending string ')
    disp(s)
    s = [char(length(s)) s];
    for i = 1:length(s)
        sendCharParity(a,s(i));
    end
    fprintf('sent \n')
end