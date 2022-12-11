var m, n, i, j: integer;
// n, m - размеры матрицы
// n - количество строк
// m - количество слобцов
// i - переменная счётчик строк
// j - переменная счётчик столбцов
var arr: array[1 .. 100, 1 .. 100] of real;
// arr - матрица размером 100х100
// n и m <= 100
var max: real;
begin
	// Ввод n, m
	write('n=');
	read(n);
	write('m=');
	read(m);

	// Ввод матрицы arr
	write('arr=');
	for i := 1 to n do
		for j := 1 to m do
			read(arr[i][j]);

	// Нахождение максимального числа в матрице
	max := arr[1][1];
	for i := 1 to n do
		for j := 1 to m do
			if arr[i][j] > max then
				max := arr[i][j];

	// Вывод максимального числа
	write('max=', max:5:5);
end.