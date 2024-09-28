function coef = spline_c2(x, y)
    n = size(x, 1);
    r = zeros(n, 1);
    % n-1 sizevector off x(i+1) - x(i)
    h = diff(x);
    % These are used to determine the coefficients of the cubic spline.
    for i = 2:n - 1
        % tridiagonal matrix
        A(i, i - 1:i + 1) = [h(i - 1), 2 * (h(i - 1) + h(i)), h(i)];
        % a weighted difference of slopes
        r(i) = 3 * (y(i + 1) - y(i)) / h(i) - 3 * (y(i) - y(i - 1)) / h(i - 1);
    end
    % Natural spline boundary conditions
    A(1, 1) = 1;
    A(n, n) = 1;
    % Solve for the second derivatives
    s = A \ r;
    % a[i] + b[i]*(x-x[i]) + c[i]*(x-x[i])^2 + d[i]*(x-x[i])^3
    a = y(1:n - 1);
    b = (y(2:n) - y(1:n - 1)) ./ h - h .* (2 * s(1:n - 1) + s(2:n)) / 3;
    c = s(1:n - 1);
    d = (s(2:n) - s(1:n - 1)) ./ (3 * h);
    % I put 4 elements in the column vector at each step
    coef = zeros(4 * (n - 1), 1);
    for i = 1:n - 1
        coef(4 * (i - 1) + 1:4 * i) = [a(i); b(i); c(i); d(i)];
    end

end
