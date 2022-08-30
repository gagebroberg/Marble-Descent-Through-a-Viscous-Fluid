% calculating rref of matrix
A = [1 0 1 1 0 0; 0 1 -3 -1 1 1; 0 0 0 -1 -2 -1]
rref(A)

% graviational acceleration
g = 9.81; 
% densities with corn syrup first and shampoo second
p = [1427.1 1427.1 1427.1 1427.1 1427.1 1018.0 1018.0 1018.0 1018.0 1018.0];
% viscosities with shampoo first and corn syrup second
mu = [5 5 5 5 5 20 20 20 20 20];
% masses of marbles 1-5 twice
m = [0.003 0.005 0.013 0.022 0.054 0.003 0.005 0.013 0.022 0.054];
% radii of marbles 1-5 twice
r = [0.007 0.008 0.011 0.013 0.0175 0.007 0.008 0.011 0.013 0.0175];
%velocities with corn syrup first and shampoo second
v = [0.026 0.030 0.046 0.070 0.076 0.009 0.010 0.016 0.019 0.021];

% pi1, pi2, pi3 values
pi1 = r.^3 .* p ./ (m)
pi2 = (m.^2 .* g) ./ (r.^3 .* mu.^2)
pi3 = (v .^ 2) ./ (r .* g)
% Fit
F=[ones(size(pi3))' pi1' pi2']
phi_vals=F\pi3'
x = 1:1:10;
pi3 = phi_vals(1) + phi_vals(2) .* pi1 + phi_vals(3) .* pi2;
v_t = sqrt(r .* g .* pi3);
% plotting exact values of v
plot(x, v, 'o')
hold on
% plotting predicted values of v
plot(x, v_t, 'x')
hold off
title("Terminal velocities of different marbles in corn syrup and shampoo");
ylabel("Terminal velocity (m/s)");
xlabel("Trial number");
legend('Actual terminal velocities', 'Predicted terminal velocities');
% SSR of fit
E = sum((v - v_t).^2)
s = sqrt(E ./ (10 - 3))