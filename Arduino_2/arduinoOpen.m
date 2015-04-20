function serialPort = arduinoOpen(portName)
% FUNCTION: open a serial port connection to an Arduino board
% USE:      serialPort = arduinoOpen(portName)
% PARAMS:   portName = the name of the port to which the Arduino board is connected
% RETURNS:  an open serial port object
% EXAMPLES: serialPort = arduinoOpen('COM4');
%           serialPort = arduinoOpen('/dev/tty.usbmodem411');
  serialPort = serial(portName, 'BaudRate', 115200);
  fopen(serialPort);
  % it takes a few seconds before the port can be used, but in the mean
  % time the board can be reset if this is a necessary step on your system
  disp('reset the board if necessary')
  for i=10:-1:1
    fprintf('%d ', i);
    pause(0.3);
  end
  fprintf('\n')
end
