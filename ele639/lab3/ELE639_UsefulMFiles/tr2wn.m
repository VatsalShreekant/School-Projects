%TR2WN
% This file calculates the equivalent frequency of natural
% oscillations given the estimate of a rise time tr (0 to 100%)
% based on equation: tr=pi-cos(zeta)^(-1)/wn/sqrt(1-zeta^2);
%
% wn=tr2wn(tr,zeta);
% 
%  input  - ts, settling time (0 to 100%) in seconds
%         - zeta, damping ratio
%  output - wn, frequency of natural oscillations in rad/sec
%  see also: PO2ZETA, MR2ZETA, TS2WN, WR2WN
%
% Last revision: January 2018            Dr. M.S. Zywno
function wn=tr2wn(tr,zeta);
wn=(pi-acos(zeta))/tr/sqrt(1-zeta^2);
