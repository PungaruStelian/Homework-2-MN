function mat = read_mat(path)
    % Read the .csv file
    mat = csvread(path, 1, 1);
end