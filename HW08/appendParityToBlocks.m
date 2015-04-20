function b_mat_p = appendParityToBlocks(b_mat,desired_par)
% Given a 3-D matrix of numbers and a parity value (0 or 1) this function will
% add a value to the end of each row and column of each 2-D matrix to make it match the parity 
% Use: appendParityToBlocks(b_mat,desired_par)
    for n = 1:size(b_mat,3)
        b_mat_p(:,:,n) = appendParityToBlock(b_mat(:,:,n),desired_par);
    end
end