classdef mytimestamp < matlab.mixin.Copyable
    %UNTITLED4 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        counter
        timestamp
    end
    
    methods
        function obj = mytimestamp()
            obj.timestamp   = datestr(datetime);
            obj.counter     = mycounter_copyable();
        end
        
        function [] = show(obj)
            disp(['Stamp: ', obj.timestamp, '; Count: ', num2str(obj.counter.count)]);
        end
        
        function [] = uplus(obj)
            % Оператор унарный плюс
            +obj.counter;
        end
        
        function [obj] = fun(obj)
            obj.timestamp = datestr(datetime);
        end        
    end
end

