% over2nd
% This function fits second order overdamped model to measured data 
%
%  G(s)=Kdc/[(tau1*s+1)(tau2*s+1)]
%
%  input  - Kdc,tau1,tau2 - model parameters
%         - tfin          - simulation time
%         - tm, ym        - data
%
% Last revision: January 2018            Dr. M.S. Zywno
function over2nd(Kdc,tau1,tau2,tfin,tm,ym);
t=linspace(0,tfin);
mod=tf(Kdc,conv([tau1 1],[tau2 1]));
y=step(mod,t);
figure('Position',[200 150  540 400])
figure(1)

plot(tm,ym,t,y,'o')
legend('measured response','model response',4)
xlabel('time in sec')
grid
title(['step response, Kdc = ' num2str(Kdc) ' tau1 = ' num2str(tau1) 'tau2 = ' num2str(tau2)])








