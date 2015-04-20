function segments = segmentString(s)
% This function takes any string and returns an n x 8 array of characters.
% Use: segmentString(s)
  len = length(s);
  remainder = rem(len, 8);
  if(remainder ~= 0)
    newLen = len + 8 - remainder;
    s(newLen) = 0;
  else
    newLen = len;
  end
  % Notice that here I'm using 8 as the number of rows and
  % newLen/8 as the number of columns. This builds the segments
  % as a group of columns. Then I transpose the columns into rows
  % using the apostrophe.
  segments = reshape(s, 8, newLen/8)';
end