var n, i, j: integer;
// n - количество строк и столбцов в матрице
// i - переменная счётчик строк
// j - переменная счётчик столбцов
var arr: array[1 .. 100, 1 .. 100] of real;
// arr - матрица размером 100х100
// n и m <= 100
var sum: real;
begin
	// Ввод n, m
	write('n=');
	read(n);

	// Ввод матрицы arr
	write('arr=');
	for i := 1 to n do
		for j := 1 to n do
			read(arr[i][j]);

	// Нахождение суммы чисел под главной диагональю в матрице
	sum := 0;
	for i := 1 to n do
		for j := 1 to n do
			if i > j then
				sum := sum + arr[i][j];

	// Вывод суммы
	write('sum=', sum:5:5);
end.