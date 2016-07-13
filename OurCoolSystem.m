function [ xprime ] = OurCoolSystem( t, y)
% The differential equation for our really really cool system
global k1 k3 r j h m g;

% y = [q1; p2; q3; p4];
q1 = y(1);
p2 = y(2);
q3 = y(3);
p4 = y(4);

x1 = q1 / k1;
x2 = q3 / k3;
dL = x1+x2;
m4 = m*(1 + dL/h);


xprime = [  p2 /(r*j);
            q3*r*k3 - (q1*k1)/r;
            p4 / m4 - (p2*r)/j;
            m4 * g - k3*q3];
    
% Note:
% m4 = chainMass( dL, m, L ) -> see function in chainMass.m 
    
%% EXAMPLE:
% xprime is the states rate vector and x is state vector. 
%we have x'=Ax; A is the dynamic matrix of our system that we have from
%state equations. t is time. 
    
% xprime=[ 0                  L_2/L_1/m_1     -1/m_2 ;
%              -L_2/L_1*K     -b/m_1              0 ;
%               K                 0                       0]    *    [x(1) ; x(2) ; x(3) ];

end

