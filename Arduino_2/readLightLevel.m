function result = readLightLevel(a)
% This function will read the light level of the photoreistor and output
% the light level
% Use: readLightLevel(a)
    fwrite(a, 'r');
    var = fread(a, 2);
    result = var(1)*256 + var(2);
end