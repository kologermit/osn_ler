var n, i: integer;
// n - количество элементов в последовательности
// i - переменная счётчик
var a: array[1 .. 100] of real;
// a - массив (последовательность) чисел
// n <= 100
var sum: real;
begin
	// Ввод n, m
	write('n=');
	read(n);

	// Ввод последоватьности a
	write('a=');
	for i := 1 to n do
		read(a[i]);

	// Суммирование квадратов элементов посленовательности
	sum := 0;
	for i := 1 to n do
		sum := sum + (a[i] * a[i]);

	// Назождение кв. корня от суммы и вывод результата
	write('result=', sqrt(sum):5:5);
end.