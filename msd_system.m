function xprime=msd_system(t,x)
% system parameters are defined as global and come from the solver script
global m_1 m_2 K b L_1 L_2

% xprime is the states rate vector and x is state vector. 
%we have x'=Ax; A is the dynamic matrix of our system that we have from
%state equations. t is time. 

xprime=[ 0                  L_2/L_1/m_1     -1/m_2 ;
             -L_2/L_1*K     -b/m_1              0 ;
              K                 0                       0]    *    [x(1) ; x(2) ; x(3) ];
