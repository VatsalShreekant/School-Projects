%PO2ZETA
% This function calculates the equivalent damping ratio
% given the estimate of a PO (percent overshoot)
% based on equation: PO=100*exp(-zpi/sqrt(1-z^2));
%
% zeta=po2zeta(PO);
%
% input  - Percent Overshoot, in %
% output - zeta, damping ratio
% see also: MR2ZETA, TR2WN, TS2WN, WR2WN
%
% Last revision: January 2018    Dr. M.S. Zywno
function [zeta]=po2zeta(PO);
zeta=-log(PO/100)/sqrt(pi^2+log(PO/100)^2);
