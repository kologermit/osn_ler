var n, i, j: integer;
// n - количество строк и столбцов в матрице
// i - переменная счётчик строк
// j - переменная счётчик столбцов
var arr: array[1 .. 100, 1 .. 100] of real;
// arr - матрица размером 100х100
// n <= 100
var max: real;
begin
	// Ввод n, m
	write('n=');
	read(n);

	// Ввод матрицы arr
	write('arr=');
	for i := 1 to n do
		for j := 1 to n do
			read(arr[i][j]);

	// Нахождение максимального числа под главной диагональю в матрице
	max := arr[i + 1][j];
	for i := 1 to n do
		for j := 1 to n do
			if (i > j) and (arr[i][j] > max) then
				max := arr[i][j];

	// Вывод максимального числа под главной диагональю
	write('max=', max:5:5);
end.