function y_interp = P_spline(coef, x, x_interp)
    n = size(x, 1);
    m = size(x_interp, 1);
    y_interp = zeros(m);
    for j = 1:m
        for i = 1:n - 1
            % if the point to be interpolated is in the current segment
            if x(i) <= x_interp(j) && x_interp(j) <= x(i + 1)
                dx = x_interp(j) - x(i);
                a = coef(4 * i - 3);
                b = coef(4 * i - 2);
                c = coef(4 * i - 1);
                d = coef(4 * i);
                % calculating the value of the polynomial
                % in the interpolation error
                y_interp(j) = a + b * dx + c * dx^2 + d * dx^3;
                break;
            end

        end

    end

end
