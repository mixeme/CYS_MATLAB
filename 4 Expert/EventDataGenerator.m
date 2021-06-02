classdef EventDataGenerator < handle
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        State
    end
    
    events
        myEventData
    end
    
    methods
        function obj = EventDataGenerator(state)
            obj.State = state;
        end
        
        function makeEvent(obj)
            obj.State = obj.State + 1;
            data = EventData(datestr(datetime));
            notify(obj, 'myEventData', data);
        end
    end
end

