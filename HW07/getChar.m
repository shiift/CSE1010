function c = getChar
% This function prompts the user for a character and if the character
% string is more than one character long then it will truncate the string
% to the first character.
% Use: getChar
    c = input('Enter a character: ', 's');
    c = c(1);
end