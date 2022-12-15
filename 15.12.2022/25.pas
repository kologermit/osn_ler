// Задача 25
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
  randomize;
  write('n=');
  read(n);

  // Ввод матрицы arr
  // write('arr=');
  for i := 1 to n do
    for j := 1 to n do
      // read(arr[i][j]);
      arr[i][j] := random * 100;

  write('matrix=');
  for i := 1 to n do
  begin
    for j := 1 to n do
      write(arr[i][j]:1:1, ' ');
    writeln();
  end;

  // Нахождение суммы чисел под главной диагональю в матрице
  sum := 0;
  for i := 1 to n do
    for j := 1 to n do
      if i > j then
        sum := sum + arr[i][j];

  // Вывод суммы
  write('sum=', sum:5:5);
end.