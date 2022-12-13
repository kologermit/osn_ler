// 4v
// n - переменная счётчик
var n: integer;
// sum - сумма всех элементов (ответ)
// a - точность одного элемента суммы
// t - один элемено суммы
var a, sum, t: real;
// pow - функция для возведения числа в степень
function pow(r: real; p: integer): real;
var i: integer;
begin
	pow := 1;
	for i := 1 to p do
		pow := pow * r;
end;
// abs - функция модуля числа
function abs(r: real): real;
begin
	if r < 0 then
		abs := -r
	else
		abs := r;
end;
begin
	// Задание начальных данных переменным
	sum := 0;
	a := 0.001;
	t := 1;
	n := 1;
	// Вычисление суммы (циклом) до точности (a) одного элемента (t)
	while abs(t) > a do
	begin
		t := pow(-1, n + 1) * 1 / pow(2*n, 3);
		sum := sum + t;
		// Вывод каждого элемента последовательности
		writeln('n=', n, ' t=', t:1:5, ' sum=', sum:1:5);
		// Изменение счётчика (n) на единицу
		n := n + 1;
	end;
	// Вывод ответа
	write('sum=', sum:1:5);
end.