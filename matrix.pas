uses MatrixCalculator;
var a, b, c, m: Matrix;
var i, j: integer;
begin
	a := MatrixConstructor(1, 2, 3, 4, 5, 6, 7, 8, 9);
	b := MatrixConstructor(1, 2, 3, 4, 5, 6, 7, 8, 9);
	c := multiplierMatrix(a, b);
	for i := 1 to 3 do
	begin
		for j := 1 to 3 do
			write(c[i][j]:1:0, ' ');
		writeln();
	end;
end.