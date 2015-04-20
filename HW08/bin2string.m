function string = bin2string(block)
% Given a block of binary numbers this will convert the block to the
% corresponding characters (in a string) defined by them.
% Use: bin2string(block)
  numRows = size(block, 1);
  string = '';
  for i=1:numRows
    row = block(i, :);
    chr = bin2char(row);
    if chr == 0
      break;
    end
    string = [string chr]; %#ok<AGROW>
  end
end