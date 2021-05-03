%TS2WN
% This file calculates the equivalent frequency of natural
% oscillations given the estimate of a settling time ts (within 
% n time constants) based on equation: ts=n/(zeta*wn);
%
% wn=ts2wn(ts,n,zeta);
%
% input  - ts, settling time in seconds
%        - n, number of time constants (3, 4, 4.6, 5 etc.)
%        - zeta, damping ratio
% output - wn, frequency of natural oscillations in rad/sec
% see also: MR2ZETA, PO2ZETA, TR2WN, WR2WN
%
% Last revision: January 2018            Dr. M.S. Zywno
function [wn]=ts2wn(ts,n,zeta);
wn=n/ts/zeta;
