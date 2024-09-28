function reduced_mat = preprocess(mat, min_reviews)
    % vector with elements the number of values ​​different from 0 on each line
    review_counts = sum(mat != 0, 2);
    % vector with 1 or 0 elements, depending on the condition
    valid_users = review_counts >= min_reviews;
    % copy only the lines in which there is 1 to valid_users
    reduced_mat = mat(valid_users, :);
end
