% Tone Encoding and Decoding
% CSE1010 Project 3, Fall 2012
% Date: 9/20/2012
% Name: William Dickson
% Section: 009L
% TA: Levon Nazaryan
% Instructor: Jeffrey A. Meunier

function dual_tone = synthDtmf( freq1 , freq2 )
    tone1 = generateTone(freq1, 8192, 0.3);
    tone2 = generateTone(freq2, 8192, 0.3);
    dual_tone = tone1 + tone2;
end