function b = appendParity(b,parity_bit)
% Given a vector of numbers and a parity value (0 or 1) this function will
% add a value to the end of the vector to make the vector match the parity 
% Use: appendParity(b,parity_bit)
    b(end+1) = parityOf(b,parity_bit);
end