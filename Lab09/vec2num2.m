function n = num2vec2(V)
V = wrev(V);
n = 0;
for m = 1:length(V)
    n = V(m) * 10^(m-1) + n;
end
end