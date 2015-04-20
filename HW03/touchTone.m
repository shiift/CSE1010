% Tone Encoding and Decoding
% CSE1010 Project 3, Fall 2012
% Date: 9/20/2012
% Name: William Dickson
% Section: 009L
% TA: Levon Nazaryan
% Instructor: Jeffrey A. Meunier

function dual_tone = touchTone( key )
    [f1 f2] = nameToFreq(key);
    dual_tone = synthDtmf(f1, f2);
end