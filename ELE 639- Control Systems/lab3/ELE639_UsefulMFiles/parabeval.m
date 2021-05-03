function [Ka,ess]=parabeval(A,B);
% PARABEVAL
% This function evaluates the steady state specs for unit parabolic response
% NOTE: This function calls another M-file called "vector.m" - please
% make sure you have BOTH files in the same directory, otherwise you
% will get errors.
% How to call this function:
% If the system theoretical description (sys - transfer function) is known:
%    [Kv,ess]=parabeval(tfin,sys);
% If only experimental data vectors (t,y) are available:
%    [Kv,ess]=parabeval(t,y);
%
% Input parameters:  tfin - final simulation time
%                    sys -  system description or:
%                    t,y - parabolic response measured
% Output parameters: acceleration error constant Ka, ess.
%
% see also: stepeval, rampeval
% Last revision: January 2018           Dr. M.S. Zywno	
%
if max(size(A))==1
   tfin=A;   sys=B;
  t=linspace(0,tfin,300);
t=vector(t,'col');
  y=lsim(sys,0.5*t.*t,t);
[NG,DG]=tfdata(sys,'v');
den=DG-NG;
ix=max(size(den));
ix1=den(ix);
ix2=den(ix-1);
ix3=den(ix-2);

if ix1 <=1e-4,
   if ix2<=1e-4
         if ix3<=1e-4
          disp('The system type is 3 and Ka=inf, ess(parab)=0');
         Ka=inf;ess=0;
         else
            disp('The system type is 2;');
              dec=deconv(den,[1 0 0]);
				Ka=polyval(NG,0)/polyval(dec,0);
			ess=1/Ka;
			disp(' Ka   ess(parab)')
			disp('_______________')
			[Ka ess]
         end
   else
      disp('The system type is 1 and Ka=0, ess(parab)=inf');
                    Ka=0;ess=inf;
   end
   else
      disp('The system is type 0 and Ka=0, ess(parab)=inf');
      Ka=0;ess=inf;
   end
 
else 
        t=A;y=B;
   n=max(size(t));
   ess=t(n)-y(n);
   Ka=1/ess;
   disp(' Ka   ess(ramp)')
			disp('_______________')
			[Ka ess]
 
   
end
   plot(t,0.5*t.*t,t,y)
title(['System parabolic response, Ka = ' num2str(Ka) ' ess = ' num2str(ess)])
legend('parabolic reference','parabolic response',0)
xlabel('time in seconds')



