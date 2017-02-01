classdef LineSegment
    %UNTITLED3 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Start
        Finish
    end
    
    methods
        function line = LineSegment(pt1,pt2)
            line.Start = pt1;
            line.Finish = pt2;
        end
        
        function l = length(line)
            l = line.Start.distance(line.Finish);
        end
        
    end
    
end

