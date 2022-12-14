var m, n: integer;
var matrix: array[1 .. 100, 1 .. 100] of real;
var i, j: integer;
var sum: real;
begin
	randomize;
	write('n=');
	read(n);
	write('m=');
	read(m);
	for i := 1 to n do
		for j := 1 to m do
			// read(matrix[i][j]); // Console input
			matrix[i][j] := random * 100;
	writeln('Matrix without changes:');
	for i := 1 to n do
	begin
		for j := 1 to m do
			write(matrix[i][j]:1:4, ' ');
		writeln();
	end;
	writeln('Matrix with changes and sums:');
	for i := 1 to n do
	begin
		sum := 0;
		for j := 1 to m do
		begin
			if j mod 2 = 1 then
				matrix[i][j] := 0;
			if i mod 2 = 0 then
				sum := sum + matrix[i][j];
			write(matrix[i][j]:1:4, ' ');
		end;
		if i mod 2 = 0 then
			write(sum:1:4);
		writeln();
	end;
end.