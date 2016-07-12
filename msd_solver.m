close all

%define system parameters (the same thing in system model function)
global m_1 m_2 K b L_1 L_2
m_1=0.5;
m_2=2;
K=10;
b=0.1;
L_2=2;
L_1=1;

%%
% tspan= time span for simulation,  x0 = initial condition , x(1)=q5  x(2)=p2
%  x(3)=P6    , System model is in msd_system function 

tspan=[0 20];
x0=[0.2;0;2];

[T,x]=ode45(@msd_system,tspan,x0);
%% 

% plotting the results. The frist three plots will show each state vs time, the
% fourth plot is q5 vs p2 and the separate plot is q5 vs p2 vs p6 which
% shows the trajecotry of the system in its state space. Depending on the
% initial condition in which we release the system, it will follow a path
% toward its equilibrium point at zero. 


subplot(2,2,1);
plot(T,x(:,1));

xlabel('T');
ylabel('q5');
grid on

subplot(2,2,2);
plot(T,x(:,2));

xlabel('T');
ylabel('p2');
grid on

subplot(2,2,3);
plot(T,x(:,3));

xlabel('T');
ylabel('p6');
grid on

subplot(2,2,4);
plot(x(:,1),x(:,2));

xlabel('q5');
ylabel('p2');
grid on

figure;
plot3(x(:,1),x(:,2),x(:,3),'r')
xlabel('q5');
ylabel('p2');
zlabel('p6');
grid on

hold on
