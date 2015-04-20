function c = recvCharParity(a)
% This waits for a string of 8 bits to be recieved using receiveBit and
% outputs a character by converting the binary values using bin2char. It
% uses receiveBitParity to determine whether or not there was a timeout
% error. If there was a timeout then it changes the binaryVector to
% 'timeout' which causes the function to repeat itself after sending a false code to the other
% arduino. If the parity check is 
% Use: recvCharParity(a)
    for i = 1:9
        [binVector(i) status] = receiveBitParity(a);
        if status == 1
            binVector = ['timeout'];
            break
        end
        fprintf('%g',binVector(i))
    end
    fprintf('\n')
    if ischar(binVector) == 1
        fprintf('recvChar timed out: ACK \n')
        sendBit(a,0)
        c = recvCharParity(a);
    else
        c = bin2char(binVector(1:8));
        fprintf('recvChar got char %c \n',c)
        check = checkParity(binVector,0);
        if check == 1
            sendBitACK(a)
        else
            sendBit(a,0)
            c = recvCharParity(a);
        end
    end
end