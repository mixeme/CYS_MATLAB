classdef EventDataHandler
    % Класс обработчика осбытия. Класс в том числе демонструет передачу
    % сопутствующих данных вместе с событием.
    
    properties
        Handle  % Поле для хранения ссылки на слушателя
    end
    
    methods
        function obj = EventDataHandler(src)
            % Конструктор
            % Создаём слушателя для источника src на событие myEventData
            obj.Handle = addlistener(src, 'myEventData', @obj.handleEvent);
        end
        
        function [] = handleEvent(obj, src, evnt)
            disp(['EventData happened. State is ', num2str(src.State), '.']);
            disp(['Event time is ', evnt.State, '.']);
        end
    end
end

