% Tone Encoding and Decoding
% CSE1010 Project 3, Fall 2012
% Date: 9/20/2012
% Name: William Dickson
% Section: 009L
% TA: Levon Nazaryan
% Instructor: Jeffrey A. Meunier

function answer = encodeAndDecode(key_name)
    % Set tT equal to the touch tone of the signal from the
    % key name. In this order key_name -> frequencies -> convert
    % frequencies to tones -> combine tones
    tT = touchTone(key_name);
    
    % Uncomment following line to create sound of key in this function
    % sound(touchTone(key_name));
    
    % Set f and p equal to the frequency and power of the signal from tT
    % with 8192 samples per second
    [f p] = timeToFreq(tT,8192);
    
    % Take the frequencies of the peak power values and convert them back
    % to the name of the key.
    peaks_out = peaks(f,p);
    answer = freqToName(peaks_out(1),peaks_out(2));
end