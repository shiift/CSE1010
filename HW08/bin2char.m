function c = bin2char(b)
% Given a vector of binary numbers this will convert the vector to the
% corresponding ASCII character defined by them.
% Use: bin2char(b)
    b_str = char(b+48);
    c = char(bin2dec(b_str));
end