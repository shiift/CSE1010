function c = sendCharParity(a,c)
    fprintf('sendChar sending char %c \n',c)
    binVector = char2bin(c);
    binVector = appendParity(binVector,0);
    for i = 1:length(binVector)
        sendBitParity(a,binVector(i));
        fprintf('%g',binVector(i))
    end
    fprintf('\n')
    [check status] = receiveBitParity(a);
    if check == 0 || status == 1
        c = sendCharParity(a,c);
    end
end