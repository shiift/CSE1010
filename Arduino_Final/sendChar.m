function c = sendChar(a,c)
% This function sends a character one bit at a time using sendBit.
% Use: sendChar(a,c)
    fprintf('sendChar sending char %c \n',c)
    binVector = char2bin(c);
    for i = 1:length(binVector)
        sendBit(a,binVector(i));
        fprintf('%g',binVector(i))
    end
    fprintf('\n')
end