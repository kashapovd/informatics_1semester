% Программа генерации случайного сообщения в алфавите, содержащем не более 36 символов: 0, ..., 9, A, ..., Z.
% Автор: Кирилл Владимирович Пушкарёв.
% Дата: 26 октября 2019 г.
% Версия: 0.2
% Параметры:
% p - вектор, содержащий от 2 до 36 неотрицательных чисел.
%     Вероятности символов алфавита.
% len - целое число.
%     Длина сообщения.
function msg = gen_msg(p, len)
    % Создаём вектор символов алфавита 0, ..., 9, A, ..., Z
    alph = ['0':'9' 'A':'Z'];
    % Если p не вектор, ошибка
    if ~isvector(p)
        error('p must be a vector')
    end
    % Если длина вектора p больше длины alph, ошибка
    if length(p) > length(alph)
        % Выводим сообщение об ошибке, подставляя в него целые числа (%d) — длины векторов
        error('p is too long (%d > %d)', length(p), length(alph));
    end
    % Если длина вектора p меньше 2, ошибка
    if length(p) < 2
        error('p is too short (%d < 2)', length(p));
    end
    % Если длина не одно число, ошибка
    if ~isscalar(len)
        error('len must be a scalar')
    end
    % Если длина меньше 1, ошибка
    if len < 1
        error('len is too small (%d < 1)', len)
    end
    % Создаём пустую строку для записи сообщения
    msg = '';
    % Цикл по i от 1 до len
    for i = 1:len
        % Заносим случайно выбранный с заданными вероятностями символ в msg
        msg(i) = alph(rand_discr(p));
    end
end

% Функция генерации целого случайного числа i с вероятностью p(i).
% Параметры:
% p - вектор неотрицательных чисел, сумма элементов которого равна 1.
%     Вероятности.
function r = rand_discr(p)
    r = sum(cumsum(p) < rand()) + 1;
end
