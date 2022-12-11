// 12 Задача
var x, y: real;
// x, y - координаты точки
begin
	// Ввод количества координаты точки
	write('x=');
	read(x);
	write('y=');
	read(y);

	// Вывод номера координатной плоскости
	if (x > 0) and (y > 0) then
		write('I')
	else if (x < 0) and (y > 0) then
		write('II')
	else if (x < 0) and (y < 0) then
		write('III')
	else
		write('IV');
end.