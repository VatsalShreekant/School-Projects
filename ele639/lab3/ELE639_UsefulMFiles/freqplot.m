% FREQPLOT
% This function will compute the expected frequency response of a model,
% given its transfer function (no time delay allowed), and display both 
% the simulated  and actual measured response on one plot.
%          
%              [m,p]=freqplot(sys,wm,mm,pm);
%
% Input parameters:   sys - LTI model
%                     wm    - frequency measurement points (vector)
%                     mm    - magnitude (V/V) measurement points (vector)
%                     pm    - phase (degrees) measurement points (vector)
%
% Output parameters:  m,p     - simulated response of the model
% plots circles for measured data
%
% Last revision: January 2018            Dr. M.S. Zywno		
function [m,p]=freqplot(sys,wm,mm,pm);
figure(1)
z=size(wm);z=max(z);
z1=size(mm);z1=max(z1);
z2=size(pm);z2=max(z2);
if z==z1
 if z==z2
     [M,P]=bode(sys,wm);
     m=M(:,:);p=P(:,:);
   semilogx(wm,20*log10(m),wm,20*log10(mm),'o'),grid
   
  ylabel('gain in dB')
  title('Measured vs Analytical System response - magnitude fit:')
  legend('Model Gain','Measured Gain',3);

figure(2)
   semilogx(wm,p,wm,pm,'o'),grid
   xlabel('                                       frequency in rad/s')
   ylabel('phase in degrees')
   title('Measured vs Analytical System response - phase fit:') 
     legend('Model Phase','Measured Phase',3);

 else


disp('______________________________________________________________')
disp('     WARNING:  wm and pm vectors are of different length !!')
disp('     check your input data !!')
disp('______________________________________________________________')

end
else

disp('______________________________________________________________')
disp('     WARNING:  wm and mm vectors are of different length !!')
disp('     check your input data !!')
disp('______________________________________________________________')

end

