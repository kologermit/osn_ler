uses crt;
var a: array[1 .. 100] of real;
var t: real;
var n, i, j: integer;
procedure write_a();
var i: integer;
begin
	for i := 1 to n do
		write(a[i]:1:1, ' ');
	writeln();
end;
begin
	randomize;
	write('n=');
	read(n);
	for i := 1 to n do
		// read(a[i]); // console input
		a[i] := random * 100;
	write('a before sort: ');
	write_a();
	for i := n downto 2 do
		for j := 1 to i - 1 do
			if a[j] < a[j + 1] then
			begin
				t := a[j];
				a[j] := a[j + 1];
				a[j + 1] := t;
			end;
	write('a after sort: ');
	write_a();
end.