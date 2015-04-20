function displayConvertedInputs(ci)
  % Displays the "converted inputs" or any values stored in the first 4
  % elements of a vector) in order.
  % Use: displayConvertedInputs(ci)
    fprintf('Mass                  = %g kg\n',ci(1))
    fprintf('Energy                = %g J\n',ci(2))
    fprintf('Angle                 = %g rad\n',ci(3))
    fprintf('Starting height (y0)  = %g m\n',ci(4))
end