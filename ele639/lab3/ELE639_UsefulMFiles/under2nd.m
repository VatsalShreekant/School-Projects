% under2nd
% This function fits second order underdamped model to measured data 
%
%  G(s)=Kdc*wn^2/[s^2+2*zeta*wn*s+wn^2]
%
%  input  - Kdc,zeta,wn - model parameters
%         - tfin        - simulation time
%         - tm, ym      - data
%
% Last revision: January 2018            Dr. M.S. Zywno

function under2nd(Kdc,z,wn,tfin,tm,ym);
t=linspace(0,tfin);
mod=tf(Kdc*wn^2,[1 2*z*wn wn^2]);
y=step(mod,t);
figure('Position',[200 150  540 400])
figure(1)

plot(tm,ym,t,y,'o')
legend('measured response','model response',4)
xlabel('time in sec')
grid
title(['step response, Kdc = ' num2str(Kdc) ' z = ' num2str(z) 'wn = ' num2str(wn)])








