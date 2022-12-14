var x, a: real;
var sum, t: real;
var k: integer;
function fact(n: integer): integer;
var i: integer;
begin
	fact := 1;
	for i := 2 to n do
		fact := fact * i;
end;
function pow(r: real; p: integer): real;
var i: integer;
begin
	pow := 1;
	for i := 1 to p do
		pow := pow * r;
end;
function abs(r: real): real;
begin
	if r < 0 then
		abs := -r
	else
		abs := r;
end;
begin
	sum := 0;
	write('x=');
	read(x);
	write('a=');
	read(a);
	k := 0;
	t := 1;
	while abs(t) > a do
	begin
		t := pow(-1, k) / fact(k) / fact(k + 1) * pow(x / 2, 2*k + 1);
		sum := sum + t;
		k := k + 1;
	end;
	write(sum:1:5);
end.