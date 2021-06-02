classdef EventData < event.EventData
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        State
    end
    
    methods
        function obj = EventData(state)
            obj.State = state;
        end
    end
end

