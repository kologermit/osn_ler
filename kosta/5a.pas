// 5a
var k: integer;
var x, a, s, t: real;
function pow(a:real; b:integer): real;
var i: integer;
begin
	pow := 1;
	for i := 1 to b do
		pow := pow * a;
end;
function fact(a:integer): real;
var i: integer;
begin
	fact := 1;
	for i := 1 to a do
		fact := fact * i;
end;
begin
	read(x, a);
	s := 0;
	k := 0;
	t := a + 1;
	while ((t > a) and (t > 0)) or ((-t > a) and (t < 0)) do
	begin
		t := pow(-1, k) * pow(x, 2*k + 1) / fact(k) / (2*k + 1);
		s := s + t;
		k := k + 1;
	end;
	write(s:5:5);
end.
