function xb=boundary(w0,w1,w2,xa)
% w0 w1 w2: are weight vector coefficients generated from weightVector.m
% will generate output values for xb which can be used to plot a linear 
% function that will serve to separate the two classes on the plot 
% of feature points and 2-d classifications plots
xb=-(w1/(w2))*xa-(w0/w2);
