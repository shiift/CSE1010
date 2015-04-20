function b = char2bin(c)
% Given a character this will convert the vector to the
% corresponding ASCII number and then the binary number that it corresponds to.
% Use: char2bin(c)
    bin_str = dec2bin(c);
    bin_str_long = sprintf('%08s',bin_str);
    b_vec = bin_str_long - 48;
    b = logical(b_vec);
end