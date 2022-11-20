function G(a:real; b:real): real;
begin
	G := (a*a + b*b) / (a*a + 2*a*b + 3*b*b + 4);
end;
var s, t: real;
begin
	write('s='); readln(s); 
	write('t='); readln(t);
	write('answer=', (G(1.2, s) + G(s, t) - G(2*s + t, s + 3*t)):5:5);
end.