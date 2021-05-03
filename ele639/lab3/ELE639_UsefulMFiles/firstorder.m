%firstorder
% This function fits first order model to measured data 
%
%  G(s)=Kdc/(tau*s+1)
%
%  input  - Kdc,tau - model parameters
%         - tfin    - simulation time
%         - tm, ym  - data
%
% Last revision: January 2018            Dr. M.S. Zywno
function firstorder(Kdc,tau,tfin,tm,ym);
sys=tf(Kdc,[tau 1]);

t=linspace(0,tfin);
u=exp(0*t);
y=lsim(sys,u,t);
t1=linspace(0,tau);
figure('Position',[200 150  540 400])
figure(1)
plot(t,y,tm,ym,'o')
legend('measured response','model response',4)
title(['step response, Kdc = ' num2str(Kdc) ' tau = ' num2str(tau)])
xlabel('time in sec')
grid
figure('Position',[200 150  540 400])
figure(2)
plot(t,Kdc*u,tm,ym,'o',t1,Kdc/tau*t1)
%plot(t,Kdc*u,t,y,t1,Kdc/tau*t1)

legend('steady state','step response','slope',0);
xlabel('time in sec')
grid
title(['step response, Kdc = ' num2str(Kdc) ' tau = ' num2str(tau)])


