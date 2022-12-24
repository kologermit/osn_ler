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
	if console_input > 4 then
		console_input := -1;
	if first > 4 then
		first := -1;
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
		writeln('6. Sin');
		writeln('7. Cos');
		writeln('8. Pow');
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
		else if (console_input >= 5) and (console_input <= 7) then
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
		if console_input = 6 then outputComplex('res=', sinComplex(Complex_a)) else
		if console_input = 7 then outputComplex('res=', cosComplex(Complex_a)) else
		if console_input = 8 then outputComplex('res=', powComplex(Complex_a, p));
	end
	else if console_input = 2 then
	begin
		writeln('1. Sum');
		writeln('2. Minus');
		writeln('3. Vector mult');
		writeln('4. Scalar mult');
		writeln('5. Vector mult real num');
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
		writeln('3. Vector mult');
		writeln('4. Scalar mult');
		writeln('5. Vector mult complex num');
		writeln('6. Module');
		writeln('0. Back');
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
		writeln('3. Mult');
		writeln('4. Pow');
		writeln('5. Mult complex number');
		writeln('6. Exp');
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
		if (console_input = 4) then 
		begin
			write('a=');
			MatrixComplex_a := inputMatrixComplex();
			write('p=');
			read(p);
		end else
		if console_input = 5 then
		begin
			write('a=');
			MatrixComplex_a := inputMatrixComplex();
			write('c=');
			c := inputComplex();
		end else
		if console_input = 6 then
		begin
			write('a=');
			MatrixComplex_a := inputMatrixComplex();
		end;

		clear();
		if console_input = 0 then begin first := -1; console_input := -1; end else
		if console_input = 1 then outputMatrixComplex('res=', sumMatrixComplex(MatrixComplex_a, MatrixComplex_b)) else
		if console_input = 2 then outputMatrixComplex('res=', minusMatrixComplex(MatrixComplex_a, MatrixComplex_b)) else
		if console_input = 3 then outputMatrixComplex('res=', multiplierMatrixComplex(MatrixComplex_a, MatrixComplex_b)) else
		if console_input = 4 then outputMatrixComplex('res=', powMatrixComplex(MatrixComplex_a, p)) else
		if console_input = 5 then outputMatrixComplex('res=', multiplierMatrixComplex(MatrixComplex_a, c)) else
		if console_input = 6 then outputMatrixComplex('res=', expMatrixComplex(MatrixComplex_a));

	end;
	if (console_input = -1) and (first = 0) then
		first := first
	else if (console_input = 0) and (first = 0) then
		first := first
	else if ((console_input <> 0) and (first = -1) and (console_input <> -1)) or (first <> -1) then
	begin
		readln(st);
		readln(st);
	end;
	end;
end.