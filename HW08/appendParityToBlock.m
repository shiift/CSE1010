function b_mat_pb = appendParityToBlock(b_mat,desired_par)
% Given a matrix of numbers and a parity value (0 or 1) this function will
% add a value to the end of each row and column of the matrix to make it match the parity 
% Use: appendParityToBlock(b_mat,desired_par)
    b_mat_pc = appendParityColumn(b_mat,desired_par);
    b_mat_pb = appendParityRow(b_mat_pc,desired_par);
end