function result = readLightLevel(a)
    fwrite(a, 'r');
    var = fread(a, 2);
    result = var(1)*256 + var(2);
end