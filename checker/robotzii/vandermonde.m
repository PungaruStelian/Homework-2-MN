function coef = vandermonde(x, y)
    % vander(x) generates a Vandermonde matrix where
    % each row is a polynomial of degree n evaluated at the point x(i)
    % fliplr() reverses the order of the matrix columns
    V = fliplr(vander(x));
    coef = V \ y;
end
