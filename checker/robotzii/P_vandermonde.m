function y_interp = P_vandermonde(coef, x_interp)
    % P_vandermonde(x) = a0 + a1 * x + a2 * x^2 + ... + an * x^n
    % y_interp(i) = P_vandermonde(x_interp(i)), i = 0 : length(x_interp) - 1
    n = size(coef, 1);
    y_interp = zeros(size(x_interp));
    for i = 0:n - 1
        y_interp = y_interp + coef(i + 1) * x_interp.^i;
    end
end
