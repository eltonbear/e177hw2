classdef Point
    % Elton Shon  SID:23696287  E177  Spring 2017
    % 
    % Point class:
    %
    % properties: x = 0
    %             y = 0 by default
    %
    % To instantiate a Point object with default X, Y values: pt = Point
    % To instantiate a Point object with other X, Y values: pt = Point(x, y) 
    % 
    % Class method:
    % 
    % distance: It calculates distance between two points by calling
    %           distance(pt1, pt2) or pt1.distance(pt2)
    %
    % plus: It adds two points and returns a point whose X and Y 
    %       are the sum of the respective properties in pt1 and pt2. 
    %       ex: pt3 = pt1 + pt2
    % 
    % minus: It subtracts pt2 from pt1 and returns a point whose X and Y 
    %        are the difference of the respective properties in pt1 and pt2.
    %        ex: pt3 = pt1 - pt2
    %
    % display: Displays the point object as an ordered pair “pt = <x,y>” 
    %          ex: pt or display(pt) or pt.display
    
    properties
        X = 0;
        Y = 0;
    end
    
    methods
        function obj = Point(xval,yval)
            if nargin > 0 % Number of input arguments 
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

