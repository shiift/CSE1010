function sendBitACK(a,bit)
    global LO_DURATION
    global HI_DURATION
    global SPACE_DURATION
    led5(a, 9);
    switch bit
        case 0
            pause(LO_DURATION);
        case 1
            pause(2*HI_DURATION);
    end
    led5(a, 0);
    pause(SPACE_DURATION);
end