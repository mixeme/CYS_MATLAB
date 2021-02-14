classdef mycomplex
    %% Общедоступные поля
    properties
        re, im;
    end
    
    %% Поля доступные только в классе    
    properties(Access = private)
        a;
    end
    
    %% Поля, которые не хранятся, а рассчитываются на основе других полей
    % Требуют написания функций set.<Property> и get.<Property>
    properties(Dependent = true)
        r;
    end
    
    %% Общедоступные методы
    methods
        function obj = mycomplex(re, im)    % Конструктор
            obj.re = re;
            obj.im = im;
        end
        
        function [res] = plus(left, right)  % Перегрузка оператора +
            res.re = left.re + right.re;
            res.im = left.im + right.im;
        end

        function [res] = mag(obj)
            res = sqrt(obj.re^2 + obj.im^2);
        end        
        
        % Функции для устновки и получения значения зависимого поля
        function [res] = get.r(obj)
            res = sqrt(obj.re^2 + obj.im^2);
        end
        
        function [obj] = set.r(obj, r)
            phi = angle(obj.re + 1i*obj.im);
            obj.re = r*cos(phi);
            obj.im = r*sin(phi);
        end
        
        % Функции получения и изменения закрытыз полей
        function [a] = get_a(obj)
            a = obj.a;
        end
        
        function [obj] = set_a(obj, a)
            obj.a = a;
        end
    end
    
    %% Статические методы
    methods(Static)
        function [res] = inv(a, b)
            c = a^2 + b^2;
            res = mycomplex(a/c,-b/c);
        end        
    end
end