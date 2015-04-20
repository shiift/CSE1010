function i = getInputs
  % Prompts the user for input values for mass, energy, angle and starting
  % height which is then returned in a 1x4 vector
  % Use: getInputs
    m = input('Enter a negative mass to exit the program.\nEnter a mass in grams: ');
    if m >= 0
        e = input('Enter an energy in Joules: ');
        a = input('Enter an angle in degrees: ');
        h = input('Enter a starting height in meters: ');
        i = [m e a h];
    else
        i = [];
    end
end