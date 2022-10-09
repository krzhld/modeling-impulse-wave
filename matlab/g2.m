function g2 = g2(t)
k1 = -0.11;
k2 = +0.666;
sq_root = sqrt(4 .* k2 - k1 .^ 2);
g2 = (2 .* sqrt(k2) ./ sq_root) .* exp(k1 * t / 2) .* sin(sq_root .* t + atan(sq_root ./ k1));
end
