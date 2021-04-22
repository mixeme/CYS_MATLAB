classdef mycounter_copyable < matlab.mixin.Copyable
    %UNTITLED3 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        count
    end
    
    methods
        function obj = mycounter_copyable()
            % Конструктор
            obj.count = 0;
            disp(['Counter is created. Count: ', num2str(obj.count)]);
        end
        
        function [] = uplus(obj)
            % Оператор унарный плюс
            obj.count = obj.count + 1;
            disp(['Count: ', num2str(obj.count)]);
        end
        
        function [] = uminus(obj)
            % Оператор унарный минус
            obj.count = obj.count - 1;
            disp(['Count: ', num2str(obj.count)]);
        end        
    end
end

