var x, a: real;
var sum, t: real;
var k, i: integer;
function fact(n: integer): integer;
var answer: integer;
begin
	answer := 1;
	for i := 2 to n do
		answer := answer * i;
	fact := answer;
end;
function pow(r: real; p: integer): real;
var answer: real;
begin
	answer := 1;
	for i := 1 to p do
		answer := answer * r;
	pow := answer;
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
		t := pow(-1, k) / pow(fact(k + 1), 2) * pow(x / 2, 2*(k + 1));
		sum := sum + t;
		k := k + 1;
	end;
	write(sum:1:5);
end.