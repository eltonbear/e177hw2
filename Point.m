classdef Point
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        x = 0;
        y = 0;
    end
    
    methods
        function obj = Point(xval,yval)
            if nargin > 0
                obj.x = xval;
                obj.y = yval;
            end
        end
        
        function d = distance(pt1, pt2)
            d = sqrt((pt1.x - pt2.x)^2 + (pt1.y - pt2.y)^2);
        end
        
    end
    
end

