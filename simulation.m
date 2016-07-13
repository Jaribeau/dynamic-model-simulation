% SYDE 351 - Project Simulation
% By: Abbey Scott, Daniel Penner, Jared Baribeau

close all
global k1 k3 r j h m g;
%% Set Parameters and Constants
k1 = 30; % Spring 1 coefficient
k3 = 30; % Spring 2 coefficient
r = 0.05;  % Radius of wheel (m)
j = 1;  % Moment of innertia of wheel
h = 10; % L = length of chain above the table at rest (m)
m = 1;  % m = mass of chain above the table at rest
g = 9.81;


%% Set Initial Conditions

q1 = k1*1;  % Potential energy in spring 1 (TODO: update this spring equation)
p2 = 0;     % Angular momentum of pulley (zero when at rest) 
q3 =  k3*1; % Potential energy in spring 2 (TODO: update this spring equation) 
p4 = 0;     % Momentum of chain (zero when at rest)
% m4 = chainMass( dL, m, L ) -> see function in chainMass.m 


%% Run Simulation:

% tspan = time span for simulation
% x0 = initial condition vector
% System model is in OurCoolSystem function 

tspan = [0 20];
y0 = [q1; p2; q3; p4];
p = [k1; k3; r; j; m; h];

[T, y] = ode45(@OurCoolSystem, tspan, y0);
y


%% Plot Results
plot(T, y)
