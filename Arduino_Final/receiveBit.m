function bit = receiveBit(a)
% This function will wait until a bit is received and then output the bit
% Use: receiveBit(a)
    global LO_DURATION
    global HI_DURATION
    global LO_LEVEL
    global HI_LEVEL
    avgLevel = (HI_LEVEL + LO_LEVEL)/2;
    avgDuration = (HI_DURATION + LO_DURATION)/2;
    while true
        lightLevel = readLightLevel(a);
        if lightLevel > avgLevel
            tic
            break
        end
    end
    while true
        lightLevel = readLightLevel(a);
        if lightLevel < avgLevel
            times = toc;
            break
        end
    end
    if times > avgDuration
        bit = 1;
    else
        bit = 0;
    end
end