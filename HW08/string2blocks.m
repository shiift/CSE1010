function block = string2blocks(seg_s)
% This function takes a string of any length and cuts it into 8-character
% segments using the segmentString function, then calls the string2bin
% function on each segment.
% Use: string2blocks(seg_s)
    b = string2bin(seg_s);
    b(ceil(size(b,1)/8)*8,8) = 0;
    for n = 1:ceil(size(b,1)/8)
        block(:,:,n) = b(1+(n-1)*8:8*n,:);
    end
end