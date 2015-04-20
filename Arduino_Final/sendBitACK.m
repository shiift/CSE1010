function sendBitACK(a)
% This function sends a bit length 2*HI_DURATION to ensure that the
% acknowledgement gets across (The other end is looking for a length of at
% least (HI_DURATION+LO_DURATION)/2
% Use: sendBitACK(a)
    global HI_DURATION
    global SPACE_DURATION
    led5(a, 9);
    pause(2*HI_DURATION);
    led5(a, 0);
    pause(SPACE_DURATION);
end