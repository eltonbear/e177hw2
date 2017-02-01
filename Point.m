classdef Point
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        X = 0;
        Y = 0;
    end
    
    methods
        function obj = Point(xval,yval)
            if nargin > 0
                obj.X = xval;
                obj.Y = yval;
            end
        end
        
        function d = distance(pt1, pt2)
            d = sqrt((pt1.X - pt2.X)^2 + (pt1.Y - pt2.Y)^2);
        end
        
        function r = plus(pt1, pt2)
            r = Point(pt1.X + pt2.X, pt1.Y + pt2.Y);
        end
        
        function r = minus(pt1, pt2)
            r = Point(pt1.X - pt2.X, pt1.Y - pt2.Y);
        end
        
        function display(pt)
            string = [inputname(1) ' = <' num2str(pt.X) ',' num2str(pt.Y) '>'];
            disp(string);
        end
        
    end
    
end

