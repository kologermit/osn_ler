var a: real;
var sum, t: real;
var n, i: integer;
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
	n := 1;
	t := 1;
	a := 0.1;
	while abs(t) > a do
	begin
		t := pow(-1, n) * pow(n, 2) / pow(n, 3);
		sum := sum + t;
		n := n + 1;
	end;
	write(sum:1:5);
end.