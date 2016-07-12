% SYDE 351 - Project Simulation
% By: Abbey Scott, Daniel Penner, Jared Baribeau

% --------------------------------------
% Set Parameters

k1 = 1; % Spring 1 coefficient
k2 = 1; % Spring 2 coefficient
r = 5; % Radius of wheel (cm)
j = 1; % Moment of innertia of wheel
% m4 = chainMass( dL, m, L ) -> see function in chainMass.m 


% --------------------------------------
% State Equations

% Example:
% dydt=[-(R23/J24)*y(1)+(beta*SE11)/(R33*L14)*y(2);y(2)*-R13/L14-(beta*SE11)/(R33*J24)*y(1)+SE11];


% ---------------------------------------
% Run Simulation - use in command line

% Example:
% options=odeset('RelTol',1e-4,'AbsTol',1e-8);
% [t,y]=ode45(@DCmotor,[0 10],[0;0],options,SE11,R13,R33,beta,L14,R23,J24,breaks,coeffs);