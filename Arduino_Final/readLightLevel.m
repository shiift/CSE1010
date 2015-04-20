function result = readLightLevel(a)
% This function determines reads the light level of the photoresister and
% outputs it as a single value.
% Use: readLightLevel(a)
    fwrite(a, 'r');
    var = fread(a, 2);
    result = var(1)*256 + var(2);
end