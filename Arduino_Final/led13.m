function led13(a,logical_value)
    if logical(logical_value)
        fwrite(a, 't');
    else
        fwrite(a, 'f');
    end
end