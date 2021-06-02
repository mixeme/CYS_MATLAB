classdef EventGenerator < handle
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        State
    end
    
    events
        myEvent
    end
    
    methods
        function obj = EventGenerator(state)
            obj.State = state;
        end
        
        function [] = makeEvent(obj)
            obj.State = obj.State + 1;
            notify(obj, 'myEvent');
        end
    end
end

