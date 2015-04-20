function [r_frame,status] = repairFrame(matrix,r,c)
% This function takes a frame (9x9), a vector of error rows, and a vector of error columns,
% and tries to repair the frame.
% Use: repairFrame(matrix,r,c)
    if isempty(r) || isempty(c)
        status = 1;
        r_frame = matrix;
    elseif length(r) == 1 && length(c) == 2
        status = 2;
        matrix(r(1),c(1)) = 1 - matrix(r(1),c(1));
        r_frame = matrix;
    else
        status = 0;
        r_frame = matrix;
    end
end