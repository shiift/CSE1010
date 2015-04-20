function string = blocks2string(blocks)
% Given a 3-D block of binary numbers this will convert the block to the
% corresponding characters (in a string) defined by them.
% Use: bin2string(block)
string = '';
    for n = 1:size(blocks,3)
        string = [string,bin2string(blocks(:,:,n))];
    end
end