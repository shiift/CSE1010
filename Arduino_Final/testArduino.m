function testArduino(portName)
  a = arduinoOpen(portName);
  tic
  while toc < 10 % 10 seconds
    inLevel = readLightLevel(a);
    inPercent = inLevel / 512;
    outPercent = 1-inPercent;
    outLevel = outPercent * 10;
    led5(a, outLevel);
  end
  led5(a, 0)
  fclose(a);
end
