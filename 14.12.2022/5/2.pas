var s, t: real;
function g(a, b: real): real;
begin
	g := (a*a + b*b) / (a*a + 2*a*b + 3*b*b + 4);
end;
begin
	write('s=');
	read(s);
	write('t=');
	read(t);
	write('answer=', g(1.2, s) + g(s, t) - g(2*s + t, s + 3*t):1:4);
end.