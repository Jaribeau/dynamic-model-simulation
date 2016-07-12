function [ xprime ] = OurCoolSystem( t, x, k1, k2, r, j)
% The differential equation for our really really cool system
% Output: 

xprime = [2; 2; 2; 2]; % State equation goes here!
    
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

