var n: integer;
var t, s, a: real;
function pow(a:real; b:integer): real;
var i: integer;
begin
	pow := 1;
	for i := 1 to b do
		pow := pow * a;
end;
begin
	a := 0.001;
	s := 0;
	n := 0;
	t := 1;
	while ((t > a) and (t > 0)) or ((-t > a) and (t < 0)) do
	begin
		t := pow(-1, n) / pow(4, n) / (2*n + 1);
		s := s + t;
		n := n + 1;
	end;
	write(s:5:5);
end.
