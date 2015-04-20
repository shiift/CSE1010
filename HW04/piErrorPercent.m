function piErrorPercentResult = piErrorPercent(estimatedPi)
  % Determines and returns the percent error between the calculated value of pi and the
  % actual value of pi.
  % Use: piErrorPercent(estimatedPi)
    piErrorPercentResult = 100*abs((estimatedPi-pi)/pi);
end