function n = vec2num(V)
    V = V + '0';
    c = char(V);
    n = str2num(c);
end