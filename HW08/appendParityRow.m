function b_mat_pr = appendParityRow(b_mat,desired_par)
% Given a matrix of numbers and a parity value (0 or 1) this function will
% add a value to the end of each row of the matrix to make it match the parity 
% Use: appendParityRow(b_mat,desired_par)
    b_mat_pr = appendParityColumn(b_mat',desired_par);
    b_mat_pr = b_mat_pr';
end