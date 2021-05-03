% **********************************************************
% *              USEFUL M-FILES FOR ELE639                 *     
% *                                                        *
% *                                       RYERSON          *
% *   Dr. M.S. ZYWNO                     University        *
% *                                                        *
% *   These files are periodically updated                 *
% *                                                        *
% *                      LAST REVISION: March 2019       *
% *                                                        *
% **********************************************************
%
%   Evaluation of Performance Specifications:
%
%   vector     - Ordering vectors in rows or columns.
%   stepeval   - Performance specs for a step response.
%   rampeval   - Performance specs for a ramp response.
%   parabeval  - Performance specs for a parabolic response.
%   po2zeta    - Evaluation of damping ratio from percent overshoot.
%   zeta2po    - Calculation of percent overshoot from damping ratio.
%   ts2wn      - Evaluation of wn from settling time.
%   tr2wn      - Evaluation of wn from rise time.
%   mr2zeta    - Evaluation of damping ratio from resonant peak.
%   wr2wn      - Evaluation of wn from resonant frequency.
%
%   Plotting:
%
%   timeplot   - Fitting time response data, with measurements 
%                displayed as circles.
%   freqplot   - Fitting frequency response data, with measurements 
%                displayed as circles.
%   firstorder - Fitting 1st Order Model to time response data.
%   over2nd    - Fitting 2nd Order Overdamped Model to data.
%   under2nd   - Fitting 2nd Order Underdamped Model to data.
%   BodePaper  - Matlab code to generate graph paper for Bode plots.  
%                It generates two semilog graphs for making Bode plots.









