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
        
        function r = plus(pt1, pt2)
            r = Point(pt1.x + pt2.x, pt1.y + pt2.y);
        end
        
        function r = minus(pt1, pt2)
            r = Point(pt1.x - pt2.x, pt1.y - pt2.y);
        end
        
        function display(pt)
            string = [inputname(1) ' = <' num2str(pt.x) ',' num2str(pt.y) '>'];
            disp(string);
        end
        
    end
    
end

