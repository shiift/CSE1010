function sendBit(a,bit)
% This function sends a bit 0 or 1 by leaving the led on for a length of
% LO_DURATION and HI_DURATION respectively.
% Use: sendBit(a,bit)
    global LO_DURATION
    global HI_DURATION
    global SPACE_DURATION
    led5(a, 9);
    switch bit
        case 0
            pause(LO_DURATION);
        case 1
            pause(HI_DURATION);
    end
    led5(a, 0);
    pause(SPACE_DURATION);
end