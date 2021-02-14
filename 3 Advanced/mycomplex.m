classdef mycomplex
    %% ������������� ����
    properties
        re, im;
    end
    
    %% ���� ��������� ������ � ������    
    properties(Access = private)
        a;
    end
    
    %% ����, ������� �� ��������, � �������������� �� ������ ������ �����
    % ������� ��������� ������� set.<Property> � get.<Property>
    properties(Dependent = true)
        r;
    end
    
    %% ������������� ������
    methods
        function obj = mycomplex(re, im)    % �����������
            obj.re = re;
            obj.im = im;
        end
        
        function [res] = plus(left, right)  % ���������� ��������� +
            res.re = left.re + right.re;
            res.im = left.im + right.im;
        end

        function [res] = mag(obj)
            res = sqrt(obj.re^2 + obj.im^2);
        end        
        
        % ������� ��� �������� � ��������� �������� ���������� ����
        function [res] = get.r(obj)
            res = sqrt(obj.re^2 + obj.im^2);
        end
        
        function [obj] = set.r(obj, r)
            phi = angle(obj.re + 1i*obj.im);
            obj.re = r*cos(phi);
            obj.im = r*sin(phi);
        end
        
        % ������� ��������� � ��������� �������� �����
        function [a] = get_a(obj)
            a = obj.a;
        end
        
        function [obj] = set_a(obj, a)
            obj.a = a;
        end
    end
    
    %% ����������� ������
    methods(Static)
        function [res] = inv(a, b)
            c = a^2 + b^2;
            res = mycomplex(a/c,-b/c);
        end        
    end
end