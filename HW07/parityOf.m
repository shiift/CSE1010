function parity_bit = parityOf(b,desired_par)
% This function determines the parity of a vector and if it is equal to the
% desired parity then it sets the 'parity_bit' equal to 0, otherwise it
% sets it eqaul to 1.
% Use: parityOf(b,desired_par)
    if rem(length(find(b)),2) == desired_par
        parity_bit = 0;
    else
        parity_bit = 1;
    end
end