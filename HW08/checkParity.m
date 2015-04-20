function result = checkParity(bits, parity)
% This function will take a group of bits and if the parity of the bits in
% positions 1-8 are equal the parity given by the ParityOf function, then
% the result returned is true, otherwise false.
% Use: checkParity(bits, parity)
if bits(9) == parityOf(bits(1:8), parity)
    result = 1;
else
    result = 0;
end