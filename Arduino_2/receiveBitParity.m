function [bit status] = receiveBitParity(a)
% This function will wait until a bit is received and then output the bit
% if the program times out then return a status of 1 which indicates a
% timeout
% Use: receiveBit(a)
    global LO_DURATION
    global HI_DURATION
    global LO_LEVEL
    global HI_LEVEL
    avgLevel = (HI_LEVEL + LO_LEVEL)/2;
    avgDuration = (HI_DURATION + LO_DURATION)/2;
    timeout = tic; % Starts timer for timeout
    status = 0;
    while true
        lightLevel = readLightLevel(a);
        if lightLevel > avgLevel
            t = tic;
            break
        end
        if toc(timeout) > 2 % If the timer reaches x seconds then set the status to 1 and bit equal to 2
            status = 1;
            bit = 0; % Set bit equal to 0 (so that there is a return)
            return
        end
    end
    while true
        lightLevel = readLightLevel(a);
        if lightLevel < avgLevel
            times = toc(t);
            break
        end
    end
    if times > avgDuration
        bit = 1;
    else
        bit = 0;
    end
end