function c = recvChar(a)
    for i = 1:8
        binVector(i) = receiveBit(a);
        fprintf('%g',binVector(i))
    end
    fprintf('\n')
    c = bin2char(binVector);
    fprintf('recvChar got char %c \n',c)
end