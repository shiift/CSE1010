t = tic;

sendStringParity(a,'abcdef')
recvStringParity(a);

roundTripTime = toc(t)