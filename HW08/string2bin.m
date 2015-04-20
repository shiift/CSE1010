function b_mat = string2bin(s)
% This function takes a string and converts it to a binary vector
% Use: string2bin(s)
for n=1:length(s)
    b_mat(n,:) = char2bin(s(n));
end
end