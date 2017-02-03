classdef LineSegment
    % Elton Shon  SID:23696287  E177  Spring 2017
    %
    % LineSegment Class:
    %
    % Properites: Start
    %             Finish (Properties can only be assigned with Point objects)
    % 
    % To instantiate a LineSegment object with two Point objects: LineSegment(pt1,pt2)
    % 
    % Set methods check and make sure only Point objects are assigned to 
    % class properties, or it shows error messages.
    %
    % Class method:
    % 
    % length: Returns the length of the line segment. 
    %         ex: line.length or length(line)
    %             where line is a LineSegment object
    % 
    % display: Plots the line connecting the Start and Finish
    %          ex: display(line) or line.display or line 
    %              where line is a LineSegment object

    
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
            % is this considered class method?
            if isa(obj, 'Point')
                line.Start = obj;
            else
                error('Input arguments must be Point objects')
            end
        end
        
        function line = set.Finish(line, obj)
            if isa(obj, 'Point')
                line.Finish = obj;
            else
                error('Input arguments must be Point objects')
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

