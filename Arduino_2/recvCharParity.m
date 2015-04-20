function c = recvCharParity(a)
    for i = 1:9
        [binVector(i) status] = receiveBitParity(a);
        if status == 1
            binVector = [2];
            break
        end
        fprintf('%g',binVector(i))
    end
    fprintf('\n')
    if binVector == [2]
        fprintf('recvChar timed out: ACK \n')
    else
        c = bin2char(binVector(1:8));
        fprintf('recvChar got char %c \n',c)
    end
    
    check = checkParity(binVector,0);
    if check == 1
        sendBitACK(a,1)
    else
        sendBit(a,0)
        c = recvCharParity(a);
    end
end