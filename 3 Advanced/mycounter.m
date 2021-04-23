classdef mycounter < handle
    % Класс счётчика для демонстрации поведениея объекта-ссылки
    
    properties
        % count - переменная счётчик, изменяемая с помощью унарных
        % операторов плюс и минус
        count
    end
    
    methods
        function obj = mycounter()
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