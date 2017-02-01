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
        
        function line = set.Start(line, obj)
            % why cant this be inplemented in constructor?
            % what exactly is set.Property
            if isa(obj, 'Point')
                line.Start = obj;
            else
                error('Properties must be Point objects')
            end
        end
        
        function line = set.Finish(line, obj)
            if isa(obj, 'Point')
                line.Finish = obj;
            else
                error('Properties must be Point objects')
            end
        end
        
        function l = length(line)
            l = line.Start.distance(line.Finish);
        end
        
        function display(line)
            % Does it display when a lineSeg object is initilized? 
            figure;
            plot([line.Start.X, line.Finish.X], [line.Start.Y, line.Finish.Y])
        end
        
    end
    
end

