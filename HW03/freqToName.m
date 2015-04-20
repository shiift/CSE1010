% Tone Encoding and Decoding
% CSE1010 Project 3, Fall 2012
% Date: 9/20/2012
% Name: William Dickson
% Section: 009L
% TA: Levon Nazaryan
% Instructor: Jeffrey A. Meunier

function name = freqToName(f1, f2)
	if closeTo(f1, 697)
		if closeTo(f2, 1209)
			name = '1';
		elseif closeTo(f2, 1336)
			name = '2';
		elseif closeTo(f2, 1477)
			name = '3';
		elseif closeTo(f2, 1633)
			name = 'A';
		end
	elseif closeTo(f1, 770)
		if closeTo(f2, 1209)
			name = '4';
		elseif closeTo(f2, 1336)
			name = '5';
		elseif closeTo(f2, 1477)
			name = '6';
		elseif closeTo(f2, 1633)
			name = 'B';
		end
	elseif closeTo(f1, 852)
		if closeTo(f2, 1209)
			name = '7';
		elseif closeTo(f2, 1336)
			name = '8';
		elseif closeTo(f2, 1477)
			name = '9';
		elseif closeTo(f2, 1633)
			name = 'C';
		end
	elseif closeTo(f1, 941)
		if closeTo(f2, 1209)
			name = '*';
		elseif closeTo(f2, 1336)
			name = '0';
		elseif closeTo(f2, 1477)
			name = '#';
		elseif closeTo(f2, 1633)
			name = 'D';
		end
	end
end