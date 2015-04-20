function result = checkParity(bits, parity)
if bits(9) == parityOf(bits(1:8), parity)
    result = 1;
else
    result = 0;
end
