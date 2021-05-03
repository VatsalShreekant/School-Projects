%ZETA2PO
% This file calculates a PO (percent overshoot)
% given the estimate of the equivalent damping ratio
% based on equation: PO=100*exp(-zpi/sqrt(1-z^2));
%
% PO=zeta2po(zeta);
%
% input - zeta, damping ratio
% output  - Percent Overshoot, in %

% M.S. Zywno
% Last revision: January 2018            Dr. M.S. Zywno	
function [PO]=zeta2po(zeta);
PO=100*exp(-zeta*pi/sqrt(1-zeta^2));