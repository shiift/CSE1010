function trans_frames = transmitFrames(frames,error_prob)
% This function takes a 3-d matrix of bits (the frames) and an error
% probability to simulate a transmission of the frame with a error_prob
% probability of flipping each bit.
% Use: transmitFrames(frames,error_prob)
    c = 0;
    count = 0;
    for n = 1:size(frames,3)
        for m = 1:size(frames,2)
            count = c + count;
            [trans_frames(m,:,n) c] = addNoise(frames(m,:,n),error_prob);
        end
    end
    fprintf('number of bits flipped: %0.f \n',count)
end