unit MatrixCalculator;
interface

type Matrix = array[1 .. 3, 1 .. 3] of real;
	
function MatrixConstructor(a1, a2, a3, a4, a5, a6, a7, a8, a9: real): Matrix;
function MatrixConstructor(a1, a2, a3: array of real): Matrix;
function MatrixConstructor(a: Matrix): Matrix;
function sumMatrix(a, b: Matrix): Matrix;
function minusMatrix(a, b: Matrix): Matrix;
function multiplierMatrix(a, b: Matrix): Matrix;
function scalarMultiplierMatrix(m: Matrix; s: real): Matrix;
// function scalarMultiplierMatrix(a, b: Matrix): real;
// function moduleMatrix(a: Matrix): real;

implementation

function MatrixConstructor(a1, a2, a3, a4, a5, a6, a7, a8, a9: real): Matrix;
begin
	MatrixConstructor[1][1] := a1;
	MatrixConstructor[1][2] := a2;
	MatrixConstructor[1][3] := a3;
	MatrixConstructor[2][1] := a4;
	MatrixConstructor[2][2] := a5;
	MatrixConstructor[2][3] := a6;
	MatrixConstructor[3][1] := a7;
	MatrixConstructor[3][2] := a8;
	MatrixConstructor[3][3] := a9;
end;

function MatrixConstructor(a1, a2, a3: array of real): Matrix;
var i: integer;
begin
	for i := 1 to 3 do
		MatrixConstructor[1][i] := a1[i];
	for i := 1 to 3 do
		MatrixConstructor[2][i] := a2[i];
	for i := 1 to 3 do
		MatrixConstructor[3][i] := a3[i];
end;

function MatrixConstructor(a: Matrix): Matrix;
begin
	MatrixConstructor := a;
end;

function sumMatrix(a, b: Matrix): Matrix;
var i, j: integer;
begin
	for i := 1 to 3 do
		for j := 1 to 3 do
			sumMatrix[i][j] := a[i][j] + b[i][j];
end;

function minusMatrix(a, b: Matrix): Matrix;
var i, j: integer;
begin
	for i := 1 to 3 do
		for j := 1 to 3 do
			minusMatrix[i][j] := a[i][j] - b[i][j];
end;

function multiplierMatrix(a, b: Matrix): Matrix;
var i, j, k: integer;
begin
	for i := 1 to 3 do
		for j := 1 to 3 do
		begin
		multiplierMatrix[i][j] := 0;
 			for k := 1 to 3 do
			begin
				multiplierMatrix[i][j] := multiplierMatrix[i][j] + a[i][k] * b[k][j];
				// writeln('c[', i, '][', j, ']+=a[', i, '][', k, '] * b[', k, '][', j, ']');
				// writeln(multiplierMatrix[i][j]:1:0, '=', a[i][k]:1:0, '*', b[k][j]:1:0);
			end;
		end;
end;

function scalarMultiplierMatrix(m: Matrix; s: real): Matrix;
var i, j: integer;
begin
	for i := 1 to 3 do
		for j := 1 to 3 do
			scalarMultiplierMatrix[i][j] := m[i][j] * s;
end;

// function scalarMultiplierMatrix(a, b: Matrix): real;
// begin
// 	scalarMultiplierMatrix := a.x*b.x + a.y*b.y + a.z*b.z;
// end;

// function moduleMatrix(a: Matrix): real;
// begin
// 	moduleMatrix := sqrt(a.x*a.x + a.y*a.y + a.z*a.z);
// end;

end.