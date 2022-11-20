var n, i: integer;
var t, s, x: real;
function fact(a:integer): real;
var i: integer;
begin
	fact := 1;
	for i := 1 to a do
		fact := fact * i;
end;
function abs(a:real): real;
var i: integer;
begin
	if a < 0 then
		abs := -a
	else
		abs := a;
end;
begin
	read(n, x);
	s := 0;
	for i := 1 to n do
	s := s + (fact(2*i)+abs(x))/fact(i*i);
	write(s:5:5);
end.
