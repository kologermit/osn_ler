library Complex;
const max_n=100;
var a, b, c, s, t: Complex.Complex;
var eps: real;
var i: integer;
function abs(a: real): real;
begin
    if a < 0 then
        abs := -a
    else
        abs := a;
end;
begin
    write('a_r:');
    read(a.r);
    write('a_c:');
    read(a.c);
    writeln('a= ', a.r:3:5, ' + ', a.c:3:5, 'i');
    write('b_r:');
    read(b.r);
    write('b_c:');
    read(b.c);
    writeln('b= ', b.r:3:5, ' + ', b.c:3:5, 'i');
    writeln();
    // plus
    c := Complex.sumComplex(a, b);
    writeln('a + b = ', c.r:3:5, ' + ', c.c:3:5, 'i');
    // minus
    c := Complex.minusComplex(a, b);
    writeln('a - b = ', c.r:3:5, ' + ', c.c:3:5, 'i');
    c := Complex.minusComplex(b, c);
    writeln('b - a = ', c.r:3:5, ' + ', c.c:3:5, 'i');
    // multiple
    c := Complex.multiplierComplex(a, b);
    writeln('a * b = ', c.r:3:5, ' + ', c.c:3:5, 'i');
    // division
    c := Complex.divisionComplex(a, b);
    writeln('a / b = ', c.r:3:5, ' + ', c.c:3:5, 'i');
    // one division
    c := Complex.oneDivisionComplex(a);
    writeln('1 / a = ', c.r:3:5, ' + ', c.c:3:5, 'i');
    c := Complex.oneDivisionComplex(b);
    writeln('1 / b = ', c.r:3:5, ' + ', c.c:3:5, 'i');
    //module
    writeln('|a| = ', Complex.moduleComplex(a):3:5);
    writeln('|b| = ', Complex.moduleComplex(b):3:5);
    //pow
    eps := 0.000001;
    s.r := 0;
    s.c := 0;
    t.r := 1;
    t.c := 1;
    i := 1;
    while abs(t.r) + abs(t.c) > eps do
    begin
        t := Complex.powComplex(a, i);
        s := Complex.sumComplex(s, t);
        writeln('t=', t.r:3:5, ' + ', t.c:3:5, 'i');
        writeln('s=', s.r:3:5, ' + ', s.c:3:5, 'i');
        writeln('i=', i);
        writeln();
        i := i + 1;
    end;
    writeln('s=', s.r:3:5, ' + ', s.c:3:5, 'i');
end.