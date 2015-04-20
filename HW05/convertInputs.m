function ci = convertInputs(i)
  % Used for converting element 1 of the vector "i" from g to kg and
  % element 3 from degrees to radians. Returns the original vector with
  % elements 1 and 3 converted.
  % Use: convertInputs(i)
    i(1) = i(1)/1000;
    i(3) = i(3)/180*pi;
    ci = i;
end