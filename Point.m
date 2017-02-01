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
    end
    
end

