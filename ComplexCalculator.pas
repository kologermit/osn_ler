unit ComplexCalculator;
interface

type
  Complex = record
    r, c: real;
end;

function ComplexConstructor(r, c: real): Complex;
function ComplexConstructor(r: real): Complex;
function ComplexConstructor(a: Complex): Complex;
function sumComplex(a, b: Complex): Complex;
function minusComplex(a, b: Complex): Complex;
function multiplierComplex(a, b: Complex): Complex;
function multiplierComplex(a: Complex; b: real): Complex;
function divisionComplex(first, second: Complex): Complex;
function oneDivisionComplex(a: Complex): Complex;
function moduleComplex(a: Complex): real;
function powComplex(a: Complex; b: integer): Complex;

implementation

function ComplexConstructor(r, c: real): Complex;
begin
    ComplexConstructor.r := r;
    ComplexConstructor.c := c;
end;

function ComplexConstructor(r: real): Complex;
begin
    ComplexConstructor.r := r;
    ComplexConstructor.c := 0;
end;

function ComplexConstructor(a: Complex): Complex;
begin
    ComplexConstructor := a;
end;

function sumComplex(a, b: Complex): Complex;
begin
    sumComplex.r := a.r + b.r;
    sumComplex.c := a.c + b.c; 
end;

function minusComplex(a, b: Complex): Complex;
begin
    minusComplex.r := a.r - b.r;
    minusComplex.c := a.c - b.c; 
end;

function multiplierComplex(a, b: Complex): Complex;
begin
    multiplierComplex.r := a.r * b.r - a.c * b.c;
    multiplierComplex.c := a.r * b.c + a.c * b.r;
end;

function multiplierComplex(a: Complex; b: real): Complex;
begin
    multiplierComplex.r := a.r * b;
    multiplierComplex.c := a.c * b;
end;

function divisionComplex(first, second: Complex): Complex;
var a, b, c, d: real;
begin
    a := first.r;
    b := first.c;
    c := second.r;
    d := second.c;
    divisionComplex.r := (a*c + b*d) / (c*c + d*d);
    divisionComplex.c := (b*c - d*a) / (c*c + d*d);
end;

function oneDivisionComplex(a: Complex): Complex;
var one: Complex;
begin
    one.r := 1;
    one.c := 0;
    oneDivisionComplex := divisionComplex(one, a);
end;

function moduleComplex(a: Complex): real;
begin
    moduleComplex := sqrt(a.r*a.r + a.c*a.c);
end;

function powComplex(a: Complex; b: integer): Complex;
var i: integer;
begin
    powComplex := a;
    for i := 2 to b do
        powComplex := multiplierComplex(powComplex, a);
end;
end.