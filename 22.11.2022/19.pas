// 19 Задача
var a, b, c, d: integer;
// a, b, c, d - заданные числа
var count: integer;
// count - количество пар ожинаковых чисел
begin
	// Ввод четырёх чисел
	write('a=');
	read(a);
	write('b=');
	read(b);
	write('c=');
	read(c);
	write('d=');
	read(d);

	// Проверка всех возможных пар на одинаковость
	if a = b then
		count := count + 1;
	if a = c then
		count := count + 1;
	if a = d then
		count := count + 1;
	if b = c then
		count := count + 1;
	if b = d then
		count := count + 1;
	if c = d then
		count := count + 1;

	// Вывод количества опар одинаковых чисел
	write('count=', count);
end.