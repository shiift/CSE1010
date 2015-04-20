function result = checkParity(bits, parity)
% This function takes a vector of bits and if the actual parity of the bits
% is equal to desired parity of the bits then a 1 is returned. If the
% vector is not 9 bits in length or the parities are not equal then a 0 is
% returned
% Use: checkParity(bits, parity)
if length(bits) ~= 9
    result = 0;
    return
end
if bits(9) == parityOf(bits(1:8), parity)
    result = 1;
else
    result = 0;
end