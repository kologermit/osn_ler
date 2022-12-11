var m, n, i, j: integer;
// n, m - размеры матрицы
// n - количество строк
// m - количество слобцов
// i - переменная счётчик строк
// j - переменная счётчик столбцов
var arr: array[1 .. 100, 1 .. 100] of real;
// arr - матрица размером 100х100
// n и m <= 100
var sum: array[1 .. 100] of real;
// sum - массив сумм каждой чётной строке
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

	// Замена всех третьих столбцов на 0 и нахождение сумм каждой из чётных строк
	for i := 1 to n do
	begin
		sum[i] := 0;
		for j := 1 to m do
		begin
			if j mod 3 = 0 then
				arr[i][j] := 0;
			if i mod 2 = 0 then
				sum[i] := sum[i] + arr[i][j];
		end;
	end;

	// Вывод матрицы
	write('arr=');
	for i := 1 to n do
	begin
		for j := 1 to m do
			write(arr[i][j]:5:5, ' ');
		if i mod 2 = 0 then
			writeln('sum=', sum[i]:5:5)
		else
			writeln();
	end;
end.