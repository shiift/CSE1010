function [lo hi] = autoCalibrate(arduino)
  global LO_LEVEL
  global HI_LEVEL
  lo = readLightLevel(arduino);
  hi = readLightLevel(arduino);
  % state 1: look for low and high levels
  iters = 0;
  % Flash the LED at random intervals and wait for the adjacent board
  % to do the same thing. This will allow us to synchronize the flashing.
  while true
    diff = hi - lo;
    if diff > 30
      break
    end
    if iters > 20
      error('Adjacent LED not detected')
    end
    iters = iters + 1;
    led5(arduino, 9)
    pause(0.1)
    led5(arduino, 0)

    n = 5 + floor(10*rand);
    for i=1:n
      level = readLightLevel(arduino);
      if level > hi
        hi = level;
      elseif level < lo
        lo = level;
      end
      pause(0.01)
    end % for i
  end % while

  % Adjacent board detected. Commence synchronized flashing, and determine
  % the mean light levels for on and off.
  threshold = lo + (hi - lo)/2;
  loSum = 0;
  loCount = 0;
  hiSum = 0;
  hiCount = 0;
  state = false;
  for i = 1:10
    led5(arduino, 9)
    pause(0.1)
    led5(arduino, 0)
    tic
    while true
      level = readLightLevel(arduino);
      if state == false && level > threshold
        hiSum = hiSum + level;
        hiCount = hiCount + 1;
        state = ~state;
        break
      elseif state == true && level < threshold
        loSum = loSum + level;
        loCount = loCount + 1;
        state = ~state;
        break
      end % if
      if toc > 1.0
        lo = loSum / loCount;
        hi = hiSum / hiCount;
        return
      end % if
    end % while
  end % for i
  LO_LEVEL = lo;
  HI_LEVEL = hi;
end % function
