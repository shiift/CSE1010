function parityPit = parityOf(bits,parity)
% This function determines the parity of a vector and if it is equal to the
% desired parity then it sets the 'parityPit' equal to 0, otherwise it
% sets it eqaul to 1.
% Use: parityOf(bits,parity)
a = sum(bits) + parity;
    if rem(a, 2) == 0
        parityPit = 0;
    else
        parityPit = 1;
    end
end