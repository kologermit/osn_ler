unit MarixCalc;
interface

type Marix = array[1 .. 3, 1 .. 3] of real;

function MarixConstructor(a1, a2, a3, a4, a5, a6, a7, a8, a9: real): Marix;
// function MarixConstructor(a1, a2, a3: array[1 .. 3] of real): Marix;
// function MarixConstructor(a: array[1 .. 3, 1 .. 3] of real): Marix;
// function MarixConstructor(a: Matrix): Marix;
// function MarixConstructor(a: Marix): Marix;
// function sumMarix(a, b: Marix): Marix;
// function minusMarix(a, b: Marix): Marix;
// function multiplierMarix(a, b: Marix): Marix;
// function scalarMultiplierMarix(s: real; v: Marix): Marix;
// function scalarMultiplierMarix(a, b: Marix): real;
// function moduleMarix(a: Marix): real;

implementation

function MarixConstructor(a1, a2, a3, a4, a5, a6, a7, a8, a9: real): Marix;
begin
	MarixConstructor[1][1] := a1;
	MarixConstructor[1][2] := a2;
	MarixConstructor[1][3] := a3;
	MarixConstructor[2][1] := a4;
	MarixConstructor[2][2] := a5;
	MarixConstructor[2][3] := a6;
	MarixConstructor[3][1] := a7;
	MarixConstructor[3][3] := a8;
	MarixConstructor[3][3] := a9;
end;



// function MarixConstructor(x, y, z: real): Marix;
// begin
// 	MarixConstructor.x := x;
// 	MarixConstructor.y := y;
// 	MarixConstructor.z := z;
// end;

// function MarixConstructor(a: Marix): Marix;
// begin
// 	MarixConstructor := a;
// end;

// function sumMarix(a, b: Marix): Marix;
// begin
//     sumMarix.x := a.x + b.x;
//     sumMarix.y := a.y + b.y;
//     sumMarix.z := a.z + b.z; 
// end;

// function minusMarix(a, b: Marix): Marix;
// begin
//     minusMarix.x := a.x - b.x;
//     minusMarix.x := a.y - b.y;
//     minusMarix.x := a.z - b.z; 
// end;

// function multiplierMarix(a, b: Marix): Marix;
// begin
// 	multiplierMarix.x := a.y*b.z - a.z*b.y;
// 	multiplierMarix.y := -(a.x*b.z - a.z*b.x);
// 	multiplierMarix.z := a.x*b.y-a.y*b.x;
// end;

// function scalarMultiplierMarix(s: real; v: Marix): Marix;
// begin
// 	scalarMultiplierMarix.x := s * v.x;
// 	scalarMultiplierMarix.y := s * v.y;
// 	scalarMultiplierMarix.z := s * v.z;
// end;

// function scalarMultiplierMarix(a, b: Marix): real;
// begin
// 	scalarMultiplierMarix := a.x*b.x + a.y*b.y + a.z*b.z;
// end;

// function moduleMarix(a: Marix): real;
// begin
// 	moduleMarix := sqrt(a.x*a.x + a.y*a.y + a.z*a.z);
// end;

end.