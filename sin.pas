var x, i, r, a, b: real;
function pow(a, s: real): real;
var i: integer;
begin
    pow := 1;
    i := 1;
    while i <= s do
    begin
        pow *= a;
        i := i + 1;
    end;
end;

function fact(s: real): real;
var i: integer;
begin
    fact := 1;
    i := 1;
    while i <= s do
    begin
        fact *= i;
        i := i + 1;
    end;
end;

begin
    read(x);
    i := 1;
    r := 0;
    while true do
    begin
        a := pow(x, i) / fact(i);
        b := -pow(x, i + 2) / fact(i + 2);
        r := r + a + b;
        writeln('i:', i:1:0, ' i1:', a:1:15, ' i2:', b:1:15);
        writeln('i1/i2:', (a/b):4:15, ' i2/i1:', (b/a):4:15);
        writeln('r:', r:1:15);
        writeln();
        i := i + 4;
    end;
end.