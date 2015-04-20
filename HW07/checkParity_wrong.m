function check = checkParity_wrong(b_parity,parity)
% Given a vector of binary numbers and a parity value this function will
% check to see if the parities are equal. If they are equal it returns a 1
% if not then a 0.
% Use: checkParity(b_parity,parity)
    if parity == parityOf(b_parity(1:end-1),b_parity(end))
        check = 1;
    else
        check = 0;
    end
end