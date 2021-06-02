classdef EventDataHandler
    % ����� ����������� �������. ����� � ��� ����� ����������� ��������
    % ������������� ������ ������ � ��������.
    
    properties
        Handle  % ���� ��� �������� ������ �� ���������
    end
    
    methods
        function obj = EventDataHandler(src)
            % �����������
            % ������ ��������� ��� ��������� src �� ������� myEventData
            obj.Handle = addlistener(src, 'myEventData', @obj.handleEvent);
        end
        
        function [] = handleEvent(obj, src, evnt)
            disp(['EventData happened. State is ', num2str(src.State), '.']);
            disp(['Event time is ', evnt.State, '.']);
        end
    end
end

