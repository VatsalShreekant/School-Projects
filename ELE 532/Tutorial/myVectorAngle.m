function [ angle ] = myVectorAngle( a,b )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    
    nA = size(a);
    nB = size(b);
    if (nA~= nB)
        disp('Vector A is not the same size as vector B');
        return;
    end
    
    magA = sqrt(a*a');
    magB = sqrt(b*b');
    
    dotAB = (a*b'); 
    angle = acosd(dotAB/(magA*magB));
    
    
        

end

