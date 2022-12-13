// 3a
// n - переменная количества повторений суммы (цикла)
// i - переменная счётчик
var n, i: integer;
// sum - сумма всех элементов (ответ)
// x - заданное действительное число
var sum, x: real;
// abs - функция модуля числа
function abs(r: real): real;
begin
	if r < 0 then
		abs := -r
	else
		abs := r;
end;
begin
	// Зануление суммы
	sum := 0;
	// Ввод n и x
	write('n=');
	read(n);
	write('x=');
	read(x);
	// Вычисление суммы (циклом) для i от 1 до n
	for i := 1 to n do
		sum := sum + ((2*i) + abs(x)) / (i*i);
	// Вывод ответа
	write('sum=', sum:1:5);
end.