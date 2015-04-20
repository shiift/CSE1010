function led13(a,logical_value)
% This function will turn led13 on or off depending on the value (1 or 0)
% led13(a,logical_value)
    if logical(logical_value)
        fwrite(a, 't');
    else
        fwrite(a, 'f');
    end
end