function [r c] = checkParityOfFrame(matrix,parity)
% This function will take a matrix of bits and compare the parity of each
% row and column to that of the desired parity. It will then find the
% locations in the matrix of the flipped bits and return the locations (row
% and column vectors) of the errors. 
% Use: checkParityOfFrame(matrix,parity)
    newmat = appendParityToBlock(matrix(1:8,1:8), parity);
    calc_par_c = newmat(1:8,9);
    calc_par_r = newmat(9,1:9);
    rec_par_c = matrix(1:8,9);
    rec_par_r = matrix(9,1:9);
    r = [];
    c = [];
    for n=1:8
        if calc_par_c(n) ~= rec_par_c(n)
            r(length(r)+1) = n;
        end
    end
    for n=1:9
        if calc_par_r(n) ~= rec_par_r(n)
            c(length(c)+1) = n;
        end
    end
end