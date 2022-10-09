function solution = x(t)
if (t < 0)
    solution = 0
else
% k2 = -0.333 + 0.666
% A=-8 +10
% T= -0.06 +0.1
k1 = -0.11;
k2 = 0.2;
sq_root = sqrt(4 .* k2 - k1 .^ 2);

N = 1; % number of quasi-periods

% initial conditions
x0 = 0;
x1 = 1;

% A = zeros(1, N + 1); % amplitudes of the driving impulse forces
% delta_A = (10 - (-8)) / N;
% A(1) = -8;
% for i=2:(N+1)
%     A(i) = A(i-1) + delta_A;
% end
A = 10;

tau = zeros(1, N + 1);
xi = zeros(1, N + 1); % idk which mu and sigma

% T = zeros(1, N + 1); % duration of the pulse forces
% delta_T = 0.1 - (-0.06);
% T(1) = -0.06;
% for i=2:(N+1)
%     T(i) = T(i-1) + delta_T;
% end
T = 0.1;

solution = 0;
for i = 0:N
%     solution = solution + A(i+1) .* (fi(t - tau(i+1)) - g2(t - tau(i+1)) - fi(t - tau(i+1) - T(i+1)) + g2(t - tau(i+1) - T(i+1)));
      solution = solution + A .* (fi(t - tau(i+1)) - g2(t - tau(i+1)) - fi(t - tau(i+1) - T) + g2(t - tau(i+1) - T));

end
solution = solution ./ k2 + g3(t) + g4(t);
end
end

