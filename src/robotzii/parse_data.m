function [x, y] = parse_data(filename)
    % Open the file for reading
    in = fopen(filename, 'r');
    % Read n from the file
    n = fscanf(in, '%d', 1);
    x = fscanf(in, '%d', n + 1);
    y = fscanf(in, '%d', n + 1);
    % Close the file
    fclose(in);
    x = x(:);
    y = y(:);
end
