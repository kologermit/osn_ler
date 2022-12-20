uses ComplexCalculator, VectorComplexCalculator, VectorCalculator, MatrixCalculator, MatrixComplexCalculator, crt;
var console_input: integer;
var Complex_a, Complex_b: Complex;
var Vector_a, Vector_b: Vector;
var VectorComplex_a, VectorComplex_b: VectorComplex;
var MatrixComplex_a, MatrixComplex_b: MatrixComplex;
var p, first: integer;
var s: real;
var c: Complex;
var st: string;
function inputComplex(): Complex;
begin
	write('r=');
	read(inputComplex.r);
	write('c=');
	read(inputComplex.c);
end;
procedure outputComplex(beg: string; a: Complex);
begin
	writeln(beg, a.r:1:4, '+', a.c:1:4, 'i');
end;
function inputVector(): Vector;
begin
	write('x=');
	read(inputVector.x);
	write('y=');
	read(inputVector.y);
	write('z=');
	read(inputVector.z);
end;
procedure outputVector(beg: string; v: Vector);
begin
	writeln(beg, '(', v.x:1:4, ', ', v.y:1:4, ', ', v.z:1:4, ')');
end;
function inputVectorComplex(): VectorComplex;
begin
	write('x=');
	inputVectorComplex.x := inputComplex();
	write('y=');
	inputVectorComplex.y := inputComplex();
	write('z=');
	inputVectorComplex.z := inputComplex();
end;

procedure outputVectorComplex(beg: string; v: VectorComplex);
begin
	write(beg, 'x=');
	outputComplex('', v.x);
	write('y=');
	outputComplex('', v.y);
	write('z=');
	outputComplex('', v.z);
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

procedure clear();
begin
	gotoXY(1, 1);
	ClrScr;
	gotoXY(1, 1);
end;

begin
	first := -1;
	console_input := -1;
	while console_input <> 0 do
	begin
	clear();
	if first = -1 then
	begin
		writeln('Which type of data you want calculate?');
		writeln('1. Complex');
		writeln('2. Vector');
		writeln('3. Vector complex');
		writeln('4. Matrix complex');
		writeln('0. Exit');
		if console_input <> 0 then
			read(console_input);
		first := console_input;
	end;
	console_input := first;
	clear();
	if (console_input >= 1) and (console_input <= 5) then
		writeln('What action do you want to do?');
	if console_input = 1 then
	begin
		writeln('1. Sum');
		writeln('2. Minus');
		writeln('3. Mult');
		writeln('4. Div');
		writeln('5. Module');
		writeln('6. Pow');
		writeln('0. Back');
		read(console_input);
		clear();
		if (console_input >= 1) and (console_input <= 4) then 
		begin
			write('a: ');
			Complex_a := inputComplex();
			write('b: ');
			Complex_b := inputComplex();
		end
		else if console_input = 5 then
		begin
			write('a: ');
			Complex_a := inputComplex();
		end
		else if console_input = 6 then
		begin
			write('a: ');
			Complex_a := inputComplex();
			write('p=');
			read(p);
		end;
		clear();
		if console_input = 0 then begin first := -1; console_input := -1; end else
		if console_input = 1 then outputComplex('res=', sumComplex(Complex_a, Complex_b)) else
		if console_input = 2 then outputComplex('res=', minusComplex(Complex_a, Complex_b)) else
		if console_input = 3 then outputComplex('res=', multiplierComplex(Complex_a, Complex_b)) else
		if console_input = 4 then outputComplex('res=', divisionComplex(Complex_a, Complex_b)) else
		if console_input = 5 then write('res=', moduleComplex(Complex_a):1:4) else
		if console_input = 6 then outputComplex('res=', powComplex(Complex_a, p));
	end
	else if console_input = 2 then
	begin
		writeln('1. Sum');
		writeln('2. Minus');
		writeln('3. Mult');
		writeln('4. Scalar vector mult');
		writeln('5. Scalar mult');
		writeln('6. Module');
		writeln('0. Back');
		read(console_input);
		clear();
		if ((console_input >= 1) and (console_input <= 4)) then 
		begin
			write('a: ');
			Vector_a := inputVector();
			write('b: ');
			Vector_b := inputVector();
		end
		else if console_input = 5 then
		begin
			write('a: ');
			Vector_a := inputVector();
			write('s: ');
			read(s);
		end
		else if console_input = 6 then
		begin
			write('a: ');
			Vector_a := inputVector();
		end;
		clear();
		if console_input = 0 then begin first := -1; console_input := -1; end else
		if console_input = 1 then outputVector('res=', sumVector(Vector_a, Vector_b)) else
		if console_input = 2 then outputVector('res=', minusVector(Vector_a, Vector_b)) else
		if console_input = 3 then outputVector('res=', multiplierVector(Vector_a, Vector_b)) else
		if console_input = 4 then write('res=', scalarMultiplierVector(Vector_a, Vector_b):1:4) else
		if console_input = 5 then outputVector('res=', scalarMultiplierVector(Vector_a, s)) else
		if console_input = 6 then write('res=', moduleVector(Vector_a):1:4);
	end
	else if console_input = 3 then
	begin
		writeln('1. Sum');
		writeln('2. Minus');
		writeln('3. Vector complex mult vector complex');
		writeln('4. Vector complex scalar mult vector complex');
		writeln('5. Vector complex mult complex');
		writeln('0. Exit');
		read(console_input);
		clear();
		if ((console_input >= 1) and (console_input <= 4)) then 
		begin
			write('a: ');
			VectorComplex_a := inputVectorComplex();
			write('b: ');
			VectorComplex_b := inputVectorComplex();
		end
		else if console_input = 5 then
		begin
			write('a: ');
			VectorComplex_a := inputVectorComplex();
			write('c: ');
			c := inputComplex();
		end;
		clear();
		if console_input = 0 then begin first := -1; console_input := -1; end else
		if console_input = 1 then outputVectorComplex('res=', sumVectorComplex(VectorComplex_a, VectorComplex_b)) else
		if console_input = 2 then outputVectorComplex('res=', minusVectorComplex(VectorComplex_a, VectorComplex_b)) else
		if console_input = 3 then outputVectorComplex('res=', multiplierVectorComplex(VectorComplex_a, VectorComplex_b)) else
		if console_input = 4 then outputComplex('res=', scalarMultiplierVectorComplex(VectorComplex_a, VectorComplex_b)) else
		if console_input = 5 then outputVectorComplex('res=', ComplexMultiplierVectorComplex(VectorComplex_a, c));
	end
	else if console_input = 4 then
	begin
		writeln('1. Sum');
		writeln('2. Minus');
		writeln('3. MatrixComplex mult MatrixComplex');
		writeln('4. Pow');
		writeln('0. Back');
		read(console_input);
		clear();
		if ((console_input >= 1) and (console_input <= 3)) then 
		begin
			write('a=');
			MatrixComplex_a := inputMatrixComplex();
			write('b=');
			MatrixComplex_b := inputMatrixComplex();
		end else
		if console_input = 4 then 
		begin
			write('a=');
			MatrixComplex_a := inputMatrixComplex();
			write('p=');
			read(p);
		end;
		clear();
		if console_input = 0 then begin first := -1; console_input := -1; end else
		if console_input = 1 then outputMatrixComplex('res=', sumMatrixComplex(MatrixComplex_a, MatrixComplex_b)) else
		if console_input = 2 then outputMatrixComplex('res=', minusMatrixComplex(MatrixComplex_a, MatrixComplex_b)) else
		if console_input = 3 then outputMatrixComplex('res=', multiplierMatrixComplex(MatrixComplex_a, MatrixComplex_b)) else
		if console_input = 4 then outputMatrixComplex('res=', powMatrixComplex(MatrixComplex_a, p));

	end;
	if (console_input = -1) and (first = 0) then
		first := first
	else if (console_input = 0) and (first = 0) then
		first := first
	else if ((console_input <> 0) and (first = -1) and (console_input <> -1)) or (first <> -1) then
	begin
		writeln('c=', console_input);
		writeln('f=', first);
		readln(st);
		readln(st);
	end;
	end;
end.