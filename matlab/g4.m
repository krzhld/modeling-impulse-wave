function g4 = g4(t)
k1 = -0.11;
k2 = +0.666;
sq_root = sqrt(4 .* k2 - k1 .^ 2);
x1 = 1;
g4 = (2 .* x1) ./ sq_root .* exp(k1 ./ 2) .* sin(sq_root .* t);
end

