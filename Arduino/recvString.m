function charString = recvString(a)
    char1 = recvChar(a);
    for i = 1:double(char1)
        charString(i) = recvChar(a);
    end
    fprintf('recvString got string ')
    disp(charString)
end