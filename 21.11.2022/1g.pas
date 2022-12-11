var n, i: integer;
// n - количество элементов в последовательности
// i - переменная счётчик
var a: array[1 .. 100] of integer;
// a - массив (последовательность) чисел
// n <= 100
var min_even, max_even, count_odd: integer;
begin
	// Ввод n, m
	write('n=');
	read(n);

	// Ввод последоватьности a
	write('a=');
	for i := 1 to n do
		read(a[i]);

	// Нахождение миниамльного и максимального нечётных чисел
	min_even := a[1];
	max_even := a[1];
	count_odd := 0;
	for i := 1 to n do
	begin
		if (a[i] > max_even) and (a[i] mod 2 = 1) then
			max_even := a[i];
		if (a[i] < min_even) and (a[i] mod 2 = 1) then
			min_even := a[i];
		if a[i] mod 2 = 0 then
			count_odd := count_odd + 1;
	end;

	// Вывод минимального и максимального нечётных чисел чисел
	writeln('max_even=', max_even);
	writeln('min_even=', min_even);

	// Вывод количества чётных
	write('count_odd=', count_odd);
end.