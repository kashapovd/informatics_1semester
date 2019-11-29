**Task**
1. Изучить приложенную к заданию программу генерации случайного сообщения gen_msg.m.
2. Написать функцию, определяющую количество информации в сообщении, рассматриваемом как цепочка независимых символов заданного алфавита:[b, n] = calc_info(msg, alph, alph_p),
где msg — сообщение (вектор символов типа char), alph — алфавит (вектор символов типа char), alph_p — вектор вероятностей символов алфавита alph (alph_p(i) — вероятность символа alph(i)); b — количество информации в битах; n — объём информации в битах.
\
Если размер векторов alph и alph_p не одинаков, функция должна завершаться с ошибкой с помощью стандартной функции error() (см. примеры использования в приложенном к заданию файле gen_msg.m). В сообщении должна быть указаны причина ошибки и размеры обоих векторов.
\
Если в сообщении есть символы, не входящие в алфавит, функция должна их игнорировать, но для каждого такого символа выдавать предупреждение с помощью стандартной функции warning(). В сообщении должна быть указана причина предупреждения, символ, который его вызвал, и индекс символа в сообщении.
3. Инициализировать генератор псевдослучайных чисел MATLAB номером своего варианта.
4. Сгенерировать случайный вектор вероятностей ralph (сумма вероятностей должна быть равна единице!) для алфавита из 16 символов: 0, ..., 9, A, ..., F. Сохранить вектор ralph в файл ralph.txt.
5. Используя функции alph_entropy(), alph_redundancy() из предыдущей работы, определить энтропию и избыточность алфавита.
6. Сгенерировать сообщение msg из 100 символов алфавита ralph командой gen_msg(ralph, 100) с помощью приложенной к заданию программы. Сохранить сообщение в файл msg.txt командой dlmwrite('msg.txt', msg, '').
7. С помощью calc_info() определить количество и объём и информации в сообщении.
8. Определить среднее количество информации, приходящееся на один символ сообщения, в битах.
9. Сформировать вектор результатов results со следующими элементами:
    1. количество информации в битах;
    2. объём информации в битах;
    3. среднее количество информации, приходящееся на один символ сообщения, в битах;
    4. энтропия алфавита в битах;
    5. избыточность алфавита.
10. Сохранить вектор results в файл results.txt.