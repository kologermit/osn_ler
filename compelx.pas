uses ComplexCalculator;
var a: Complex;
begin
	a.r := 1;
	a.c := 2;
	a := sinComplex(a);
	outputComplex('a=', a);
end.