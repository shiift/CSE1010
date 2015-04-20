function charString = recvStringParity(a)
% This function works exactly like recvString except that it uses
% recvCharParity instead of recvChar.
% Use: recvStringParity(a)
    char1 = recvCharParity(a);
    for i = 1:double(char1)
        charString(i) = recvCharParity(a);
    end
    fprintf('recvString got string ')
    disp(charString)
end