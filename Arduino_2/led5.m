function led5(a,value)
% This function will change the brightness of led5 to become a brightness
% given by value (0-9)
% Use: led5(a,value)
    value = num2str(value);
    fwrite(a, value);
end