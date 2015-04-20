function V = num2vec(n)
    s = num2str(n);
    V = double(s);
    V = V - '0';
end