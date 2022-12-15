var matrix: array[1 .. 100, 1 .. 100] of real;
var sums: array[1 .. 100] of real;
var n, m, i, j: integer;
begin
	randomize;
	write('n=');
	read(n);
	write('m=');
	read(m);
	for i := 1 to n do
		for j := 1 to m do
			// read(matrix[i][j]); // console input
			matrix[i][j] := random * 10;
	write('matrix=');
	for i := 1 to n do
	begin
		if i = 1 then
			sums[j] := 0;
		for j := 1 to m do
		begin
			write(matrix[i][j]:1:1, ' ');
			if j mod 2 = 1 then
				sums[j] := sums[j] + matrix[i][j];
		end;
		writeln();
	end;
	writeln('sums columns: ');
	for j := 1 to m do
		if j mod 2 = 1 then
			writeln('column ', j, '. ', sums[j]:1:1);
end.