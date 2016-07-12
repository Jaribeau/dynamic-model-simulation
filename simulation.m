% SYDE 351 - Project Simulation
% By: Abbey Scott, Daniel Penner, Jared Baribeau

close all

%% Set Parameters

k1 = 1; % Spring 1 coefficient
k2 = 1; % Spring 2 coefficient
r = 5;  % Radius of wheel (cm)
j = 1;  % Moment of innertia of wheel


%% Set Initial Conditions

q1 = k1*1;  % Potential energy in spring 1 (TODO: update this spring equation)
p2 = 0;     % Angular momentum of pulley (zero when at rest) 
q3 =  k1*1; % Potential energy in spring 2 (TODO: update this spring equation) 
p4 = 0;     % Momentum of chain (zero when at rest)
% m4 = chainMass( dL, m, L ) -> see function in chainMass.m 


%% Run Simulation:

% tspan = time span for simulation
% x0 = initial condition vector
% System model is in OurCoolSystem function 

tspan = [0 20];
x0 = [q1; p2; q3; p4];

[T, x] = ode45(@OurCoolSystem, tspan, x0, k1, k2, r, j);
x


%% Plot Results

