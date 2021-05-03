function [Kv,ess]=rampeval(A,B);
% RAMPEVAL
% This function evaluates the steady state specs for unit ramp response
% NOTE: This function calls another M-file called "vector.m" - please
% make sure you have BOTH files in the same directory, otherwise you
% will get errors.
% How to call this function:
% If the system theoretical description (sys - transfer function) is known:
%    [Kv,ess]=rampeval(sys,tfin);
% If only experimental data vectors (t,y) are available:
%    [Kv,ess]=rampeval(t,y);
% Input parameters:  tfin - final simulation time
%                    sys -  system description or:
%                    t,y - ramp response measured
% Output parameters: velocity error constant Kv, ess.
%
% Last revision: January 2018           Dr. M.S. Zywno
% see also     stepeval, parabeval
%
if max(size(B))==1
   tfin=B;   sys=A;
  t=linspace(0,tfin,300);
t=vector(t,'col');
  y=lsim(sys,t,t);
[NG,DG]=tfdata(sys,'v');
den=DG-NG;
ix=max(size(den));
ix1=den(ix);
ix2=den(ix-1);
if ix1 <=1e-4,
		if ix2<=1e-4
         disp('The system type is 2 and Kv=inf, ess(ramp)=0');
         Kv=inf;ess=0;
		else
         disp('The system type is 1;');
         dec=deconv(den,[1 0]);
				Kv=polyval(NG,0)/polyval(dec,0);
			ess=1/Kv;
			disp(' Kv   ess(ramp)')
			disp('_______________')
			[Kv ess]
   		end
	else
      disp('The system is type 0 and Kv=0, ess(ramp)=inf');
      Kv=0;ess=inf;
   end
 
else 
        t=A;y=B;
   n=max(size(t));
   ess=t(n)-y(n);
   Kv=1/ess;
   disp(' Kv   ess(ramp)')
			disp('_______________')
			[Kv ess]
 
   
end
   plot(t,t,t,y)
title(['System ramp response, Kv = ' num2str(Kv) ' ess = ' num2str(ess)])
legend('ramp reference','ramp response','LOCATION','SouthEast')
xlabel('time in seconds')



