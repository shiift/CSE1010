function V = num2vec2(n)
m = 1;
while n > 0
    V(m) = rem(n,10);
    n = floor(n/10);
    m = m + 1;
end
V = wrev(V);
end