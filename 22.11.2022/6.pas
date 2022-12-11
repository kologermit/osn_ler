// 6 Задача
var a, k: integer;
// a (apples) - количество яблок
// k (kids) - количество детей
begin
	// Ввод количества яблок и количества детей
	write('apple=');
	read(a);
	write('kids=');
	read(k);

	// Вычисление количества яблок на одного ребёнка
	writeln('apples for one kid=', a div k);

	// Вычисление остатка яблок ушедших на компот
	write('kompot=', a mod k);
end.