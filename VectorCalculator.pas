unit VectorCalculator;
interface

type
  Vector = record x, y, z: real;
end;

function VectorConstructor(x, y, z: real): Vector;
function VectorConstructor(a: Vector): Vector;
function sumVector(a, b: Vector): Vector;
function minusVector(a, b: Vector): Vector;
function multiplierVector(a, b: Vector): Vector;
function scalarMultiplierVector(v: Vector; s: real): Vector;
function scalarMultiplierVector(a, b: Vector): real;
function moduleVector(a: Vector): real;

implementation

function VectorConstructor(x, y, z: real): Vector;
begin
	VectorConstructor.x := x;
	VectorConstructor.y := y;
	VectorConstructor.z := z;
end;

function VectorConstructor(a: Vector): Vector;
begin
	VectorConstructor := a;
end;

function sumVector(a, b: Vector): Vector;
begin
    sumVector.x := a.x + b.x;
    sumVector.y := a.y + b.y;
    sumVector.z := a.z + b.z; 
end;

function minusVector(a, b: Vector): Vector;
begin
    minusVector.x := a.x - b.x;
    minusVector.x := a.y - b.y;
    minusVector.x := a.z - b.z; 
end;

function multiplierVector(a, b: Vector): Vector;
begin
	multiplierVector.x := a.y*b.z - a.z*b.y;
	multiplierVector.y := -(a.x*b.z - a.z*b.x);
	multiplierVector.z := a.x*b.y-a.y*b.x;
end;

function scalarMultiplierVector(v: Vector; s: real): Vector;
begin
	scalarMultiplierVector.x := s * v.x;
	scalarMultiplierVector.y := s * v.y;
	scalarMultiplierVector.z := s * v.z;
end;

function scalarMultiplierVector(a, b: Vector): real;
begin
	scalarMultiplierVector := a.x*b.x + a.y*b.y + a.z*b.z;
end;

function moduleVector(a: Vector): real;
begin
	moduleVector := sqrt(a.x*a.x + a.y*a.y + a.z*a.z);
end;

end.