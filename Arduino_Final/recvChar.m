function c = recvChar(a)
% This waits for a string of 8 bits to be recieved using receiveBit and
% outputs a character by converting the binary values using bin2char.
% Use: recvChar(a)
    for i = 1:8
        binVector(i) = receiveBit(a);
        fprintf('%g',binVector(i))
    end
    fprintf('\n')
    c = bin2char(binVector);
    fprintf('recvChar got char %c \n',c)
end