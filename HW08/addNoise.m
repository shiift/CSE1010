function [b,n] = addNoise(b,prob)
% Given a vector of numbers and a probability of error (on each element of
% the vector) this function will randomly flip a 0 to a 1 or vise versa at
% the given probability.
% Use: addNoise(b,prob)
n = 0;
    for i=1:length(b)
        if rand < prob
            if b(i) == 0
                b(i) = 1;
            else
                b(i) = 0;
            end
            n = n + 1;
        end
    end
end
        