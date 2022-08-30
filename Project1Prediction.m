% This file allows a user to create a prediction for the terminal velocity
% of a marble in a viscous liquid given 
phi_vals;

% graviational acceleration
g = 9.81; 
% density
prompt = "Please enter the density of the liquid in kg/m^3\n";
p = input(prompt);
% viscosity
prompt = "Please enter the viscosity of the liquid in kg/m/s\n";
mu = input(prompt);
% mass
prompt = "Please enter the mass of the marble in kg\n";
m = input(prompt);
% radius
prompt = "Please enter the radius of the marble in m\n";
r = input(prompt);
% We will now use our model to predict terminal velocity of this marble

% pi1, pi2, pi3 values
pi1 = (r.^3 .* p) ./ m;
pi2 = (m.^2 .* g) ./ (r.^3 .* mu.^2);
pi3 = v.^2 ./ (r .* g);

phi = phi_vals(1) + phi_vals(2) .* pi1 + phi_vals(3) .* pi2;
v_t_prediction = sqrt(r .* g .* phi)