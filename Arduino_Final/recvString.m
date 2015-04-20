function charString = recvString(a)
% This function waits to receive a string by using the first character
% received to determine the length of the rest of the string.
% Use: recvString(a)
    char1 = recvChar(a);
    for i = 1:double(char1)
        charString(i) = recvChar(a);
    end
    fprintf('recvString got string ')
    disp(charString)
end