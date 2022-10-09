function g3 = g3(t)
k1 = -0.11;
k2 = +0.666;
sq_root = sqrt(4 .* k2 - k1 .^ 2);
x0 = 0;
g3 = x0 .* g2(t);
end
