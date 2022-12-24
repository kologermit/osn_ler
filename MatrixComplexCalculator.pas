unit MatrixComplexCalculator;
interface

uses ComplexCalculator;

type MatrixComplex = array[1 .. 3, 1 .. 3] of Complex;
	
function MatrixComplexConstructor(a1, a2, a3, a4, a5, a6, a7, a8, a9: Complex): MatrixComplex;
function MatrixComplexConstructor(a1, a2, a3: array of Complex): MatrixComplex;
function MatrixComplexConstructor(a: MatrixComplex): MatrixComplex;
function sumMatrixComplex(a, b: MatrixComplex): MatrixComplex;
function minusMatrixComplex(a, b: MatrixComplex): MatrixComplex;
function multiplierMatrixComplex(a, b: MatrixComplex): MatrixComplex;
function multiplierMatrixComplex(a: MatrixComplex; c: Complex): MatrixComplex;
function expMatrixComplex(a: MatrixComplex): MatrixComplex;
function ComplexMultiplierMatrixComplex(m: MatrixComplex; s: Complex): MatrixComplex;
function powMatrixComplex(a: MatrixComplex; p: integer): MatrixComplex;
function inputMatrixComplex(): MatrixComplex;
procedure outputMatrixComplex(beg: string; m: MatrixComplex);

implementation

function fact(n: integer): integer;
var i: integer;
begin
    fact := 1;
    for i := 1 to n do
        fact := fact * i;
end;

function MatrixComplexConstructor(a1, a2, a3, a4, a5, a6, a7, a8, a9: Complex): MatrixComplex;
begin
	MatrixComplexConstructor[1][1] := a1;
	MatrixComplexConstructor[1][2] := a2;
	MatrixComplexConstructor[1][3] := a3;
	MatrixComplexConstructor[2][1] := a4;
	MatrixComplexConstructor[2][2] := a5;
	MatrixComplexConstructor[2][3] := a6;
	MatrixComplexConstructor[3][1] := a7;
	MatrixComplexConstructor[3][2] := a8;
	MatrixComplexConstructor[3][3] := a9;
end;

function MatrixComplexConstructor(a1, a2, a3: array of Complex): MatrixComplex;
var i: integer;
begin
	for i := 1 to 3 do
		MatrixComplexConstructor[1][i] := a1[i];
	for i := 1 to 3 do
		MatrixComplexConstructor[2][i] := a2[i];
	for i := 1 to 3 do
		MatrixComplexConstructor[3][i] := a3[i];
end;

function MatrixComplexConstructor(a: MatrixComplex): MatrixComplex;
begin
	MatrixComplexConstructor := a;
end;

function sumMatrixComplex(a, b: MatrixComplex): MatrixComplex;
var i, j: integer;
begin
	for i := 1 to 3 do
		for j := 1 to 3 do
			sumMatrixComplex[i][j] := sumComplex(a[i][j], b[i][j]);
end;

function minusMatrixComplex(a, b: MatrixComplex): MatrixComplex;
var i, j: integer;
begin
	for i := 1 to 3 do
		for j := 1 to 3 do
			minusMatrixComplex[i][j] := minusComplex(a[i][j], b[i][j]);
end;

function multiplierMatrixComplex(a, b: MatrixComplex): MatrixComplex;
var i, j, k: integer;
begin
	for i := 1 to 3 do
		for j := 1 to 3 do
		begin
		multiplierMatrixComplex[i][j] := ComplexConstructor(0, 0);
 			for k := 1 to 3 do
			begin
				multiplierMatrixComplex[i][j] := sumComplex(multiplierMatrixComplex[i][j], multiplierComplex(a[i][k], b[k][j]));
				// writeln('c[', i, '][', j, ']+=a[', i, '][', k, '] * b[', k, '][', j, ']');
				// writeln(multiplierMatrixComplex[i][j]:1:0, '=', a[i][k]:1:0, '*', b[k][j]:1:0);
			end;
		end;
end;

function multiplierMatrixComplex(a: MatrixComplex; c: Complex): MatrixComplex;
var i, j: integer;
begin
	for i := 1 to 3 do
		for j := 1 to 3 do
			multiplierMatrixComplex[i][j] := multiplierComplex(a[i][j], c);
end;

function expMatrixComplex(a: MatrixComplex): MatrixComplex;
var k: integer;
begin
	expMatrixComplex := MatrixComplexConstructor(ComplexConstructor(0, 0), ComplexConstructor(0, 0), ComplexConstructor(0, 0), 
		ComplexConstructor(0, 0), ComplexConstructor(0, 0), ComplexConstructor(0, 0), 
		ComplexConstructor(0, 0), ComplexConstructor(0, 0), ComplexConstructor(0, 0));
	for k := 0 to 10 do
		expMatrixComplex := sumMatrixComplex(expMatrixComplex, multiplierMatrixComplex(powMatrixComplex(a, k), ComplexConstructor(1 / fact(k), 0)));
end;

function ComplexMultiplierMatrixComplex(m: MatrixComplex; s: Complex): MatrixComplex;
var i, j: integer;
begin
	for i := 1 to 3 do
		for j := 1 to 3 do
			ComplexMultiplierMatrixComplex[i][j] := multiplierComplex(m[i][j], s);
end;

function powMatrixComplex(a: MatrixComplex; p: integer): MatrixComplex;
var i: integer;
begin
	powMatrixComplex := a;
	for i := 2 to p do
		powMatrixComplex := multiplierMatrixComplex(powMatrixComplex, a);
end;


function inputMatrixComplex(): MatrixComplex;
var i, j: integer;
begin
	for i := 1 to 3 do
		for j := 1 to 3 do
		begin
			write('(', i, ', ', j, ')=');
			inputMatrixComplex[i][j] := inputComplex();
		end;
	writeln();
end;

procedure outputMatrixComplex(beg: string; m: MatrixComplex);
var i: integer;
begin
	write(beg);
	for i := 1 to 3 do
	begin
		writeln('| ', m[i][1].r:1:4, '+', m[i][1].c:1:4, 'i ; ', 
			m[i][2].r:1:4, '+', m[i][2].c:1:4, 'i ; ', m[i][3].r:1:4, '+', m[i][3].c:1:4, 'i |');
	end;
end;

end.