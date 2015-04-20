function charString = sendStringParity(a,s)
    fprintf('sendString sending string ')
    disp(s)
    s = [char(length(s)) s];
    for i = 1:length(s)
        sendCharParity(a,s(i));
    end
    fprintf('sent \n')
end