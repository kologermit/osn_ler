uses MatrixComplexCalculator, ComplexCalculator;
var a, b, c, m: MatrixComplex;
var i, j: integer;
begin
	a := MatrixComplexConstructor(
		ComplexConstructor(0, 2), ComplexConstructor(0, 0), ComplexConstructor(0, 0), 
		ComplexConstructor(0, 0), ComplexConstructor(2, 0), ComplexConstructor(0, 0), 
		ComplexConstructor(0, 0), ComplexConstructor(0, 0), ComplexConstructor(0, -2));
	b := MatrixComplexConstructor(ComplexConstructor(0, 1), ComplexConstructor(0, 0), ComplexConstructor(0, 0), ComplexConstructor(0, 0), ComplexConstructor(1, 0), ComplexConstructor(0, 0), ComplexConstructor(0, 0), ComplexConstructor(0, 0), ComplexConstructor(0, -1));
	c := multiplierMatrixComplex(a, b);
	for i := 1 to 3 do
	begin
		for j := 1 to 3 do
			write(c[i][j].r:1:4, ' ', c[i][j].c:1:4, ';');
		writeln();
	end;
end.