function similarity = cosine_similarity(A, B)
    % Normalize the vectors
    A_norm = A / norm(A);
    B_norm = B / norm(B);
    % Compute dot product
    similarity = dot(A_norm, B_norm);
end
