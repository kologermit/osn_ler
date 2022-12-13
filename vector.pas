uses VectorCalculator;
var a, b, c: Vector;
begin
	c := multiplierVector(VectorConstructor(1, 2, 3), VectorConstructor(4, 5, 6));
	writeln(c.x:5:5);
	writeln(c.y:5:5);
	writeln(c.z:5:5);
end.
