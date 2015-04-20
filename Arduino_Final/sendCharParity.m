function c = sendCharParity(a,c)
% This function sends a character one bit at a time with an appended parity
% bit. It also stops after the send to check for an ACK. If it receives a
% NAK or times out then it resends the character.
    fprintf('sendChar sending char %c \n',c)
    binVector = char2bin(c);
    binVector = appendParity(binVector,0);
    for i = 1:length(binVector)
        sendBit(a,binVector(i));
        fprintf('%g',binVector(i))
    end
    fprintf('\n')
    [check status] = receiveBitParity(a);
    if check == 0 || status == 1
        c = sendCharParity(a,c);
    end
end