function b_mat_pc = appendParityColumn(b_mat,desired_par)
% Given a matrix of numbers and a parity value (0 or 1) this function will
% add a value to the end of each column of the matrix to make it match the parity 
% Use: appendParityColumn(b_mat,desired_par)
for n = 1:size(b_mat,1)
    b_mat_pc(n,:) = appendParity(b_mat(n,:),desired_par);
end
end