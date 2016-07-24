% SYDE 351 - Project Simulation
% By: Abbey Scott, Daniel Penner, Jared Baribeau

close all
global k1 k3 r j h m g b;
%% Set Parameters and Constants
k1 = 3;     % Spring 1 coefficient
k3 = 3;     % Spring 2 coefficient
r = 0.0381; % Radius of mass 3.81cm (m)
j = 0.7;    % Moment of innertia of wheel (936g)
h = 0.1;    % L = length of chain above the table at rest (m)
m = 0.025;  % m = mass of chain above the table at rest (kg)
b = 0;      % Coeficcient of friction in the rotational shaft
g = 9.81;   


%% Set Initial Conditions

q1 = 0;   % Potential energy in spring 1 (TODO: update this spring equation)
p2 = 0;     % Angular momentum of pulley (zero when at rest) 
q3 = 0.3;   % Potential energy in spring 2 (TODO: update this spring equation) 
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
% y(:,3)
%% Plot Results
subplot(2,2,1)
plot(T, y)  % Plot everything
legend('q1 - PE Spring 1', 'p2 - Ang. momentum', 'q3 - PE Spring 2', 'p4 - Mass Momentum')

subplot(2,2,2)
plot(T, y(:,1))  % Plot spring 1
legend('q1 - PE Spring 1')

subplot(2,2,4)
plot(T, y(:,3))  % Plot spring 2
legend('q3 - PE Spring 2')

subplot(2,2,3)
plot(T, (y(:,1) + y(:,3)))
legend('q1 + q3')

