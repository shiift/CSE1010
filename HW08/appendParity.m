function b = appendParity(b,desired_par)
% Given a vector of numbers and a parity value (0 or 1) this function will
% add a value to the end of the vector to make the vector match the parity 
% Use: appendParity(b,parity_bit)
    b(9) = parityOf(b,desired_par);
end