function recoms = recommendations(path, liked_theme, num_recoms, min_reviews, num_features)
    % Citeste matricea
    matrix = read_mat(path);

    % Procesare matrice
    matrix = preprocess(matrix, min_reviews);

    % Reducere SVD
    [~, ~, V] = svds(matrix, num_features);

    % Calculeaza cosine similarity
    for i = [1 : length(V)]
        similarity_scores(i) = cosine_similarity(V(i, :)', V(liked_theme, :)');
    end

    % Sorteaza dupa similaritate
    [~, sorted_indices] = sort(similarity_scores);

    % Ordoneaza in ordinea descrescatoare
    recoms = sorted_indices(end - 1 : -1 :length(sorted_indices) - num_recoms)
end