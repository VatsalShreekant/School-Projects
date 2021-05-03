%WR2WN
% This function calculates the equivalent frequency of natural
% oscillations given the estimate of a resonant frequency
% based on equation: wn=wr/sqrt(1-2*zeta^2);
%
% wn=wr2wn(wr,zeta);
%
% input  - wr, closed loop resonant frequency in rad/sec
%        - zeta, damping ratio
% output - wn, frequency of natural oscillations
% see also: PO2ZETA, MR2ZETA, TR2WN, TS2WN
%
% Last revision: January 2018            Dr. M.S. Zywno
function [wn]=wr2wn(wr,zeta);
wn=wr/sqrt(1-2*zeta^2);
