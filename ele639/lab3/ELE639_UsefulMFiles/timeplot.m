% TIMEPLOT
% This function will display the actual measured I/O data 
% and display it together with the estimated LTI model 
% response on one plot.
% 
%              y=timeplot(sys,tm,um,ym);
%
% Input parameters:     sys      - LTI model
%                       tm,um,ym - time, input, output vectors
%
% Output parameter:    y       - simulated model response
%
% Last revision: January 2018          Dr. M.S. Zywno
function y=timeplot(sys,tm,um,ym);

figure(1)
z=size(tm);z=max(z);
z1=size(um);z1=max(z1);
z2=size(ym);z2=max(z2);
if z==z1
 if z==z2
     y=lsim(sys,um,tm);
     
     plot(tm,um,tm,ym,'o',tm,y,'b'),grid
   xlabel('                        time in sec')
  title('Measured vs Analytical System response - time response fit:')
legend('Input','Measured Output','Model Response',3);
   
 else


disp('______________________________________________________________')
disp('     WARNING:  tm and um vectors are of different length !!')
disp('     check your input data !!')
disp('______________________________________________________________')

end
else

disp('______________________________________________________________')
disp('     WARNING:  tm and ym vectors are of different length !!')
disp('     check your input data !!')
disp('______________________________________________________________')

end

