unit VectorComplexCalculator;
interface
uses ComplexCalculator;

type
  VectorComplex = record x, y, z: Complex;
end;

function VectorComplexConstructor(x, y, z: Complex): VectorComplex;
function VectorComplexConstructor(a: VectorComplex): VectorComplex;
function sumVectorComplex(a, b: VectorComplex): VectorComplex;
function minusVectorComplex(a, b: VectorComplex): VectorComplex;
function multiplierVectorComplex(a, b: VectorComplex): VectorComplex;
function scalarMultiplierVectorComplex(v: VectorComplex; s: real): VectorComplex;
function ComplexMultiplierVectorComplex(v: VectorComplex; c: Complex): VectorComplex;
function scalarMultiplierVectorComplex(a, b: VectorComplex): Complex;

implementation
 
function VectorComplexConstructor(x, y, z: Complex): VectorComplex;
begin
	VectorComplexConstructor.x := x;
	VectorComplexConstructor.y := y;
	VectorComplexConstructor.z := z;
end;

function VectorComplexConstructor(a: VectorComplex): VectorComplex;
begin
	VectorComplexConstructor := a;
end;

function sumVectorComplex(a, b: VectorComplex): VectorComplex;
begin
    sumVectorComplex.x := sumComplex(a.x, b.x);
    sumVectorComplex.y := sumComplex(a.y, b.y);
    sumVectorComplex.z := sumComplex(a.z, b.z); 
end;

function minusVectorComplex(a, b: VectorComplex): VectorComplex;
begin
    minusVectorComplex.x := minusComplex(a.x, b.x);
    minusVectorComplex.x := minusComplex(a.y, b.y);
    minusVectorComplex.x := minusComplex(a.z, b.z); 
end;

function multiplierVectorComplex(a, b: VectorComplex): VectorComplex;
begin
	multiplierVectorComplex.x := minusComplex(multiplierComplex(a.y, b.z), multiplierComplex(a.z, b.y));
	multiplierVectorComplex.y := minusComplex(multiplierComplex(a.z, b.x), multiplierComplex(a.x, b.z));
	multiplierVectorComplex.z := minusComplex(multiplierComplex(a.x, b.y), multiplierComplex(a.y, b.x));
end;

function scalarMultiplierVectorComplex(v: VectorComplex; s: real): VectorComplex;
begin
	scalarMultiplierVectorComplex.x := multiplierComplex(v.x, s);
	scalarMultiplierVectorComplex.y := multiplierComplex(v.y, s);
	scalarMultiplierVectorComplex.z := multiplierComplex(v.z, s);
end;

function ComplexMultiplierVectorComplex(v: VectorComplex; c: Complex): VectorComplex;
begin
	ComplexMultiplierVectorComplex.x := multiplierComplex(v.x, c);
	ComplexMultiplierVectorComplex.y := multiplierComplex(v.x, c);
	ComplexMultiplierVectorComplex.z := multiplierComplex(v.x, c);
end;

function scalarMultiplierVectorComplex(a, b: VectorComplex): Complex;
begin
	scalarMultiplierVectorComplex := sumComplex(sumComplex(multiplierComplex(a.x, b.x), multiplierComplex(a.y, b.y)), 
		multiplierComplex(a.z, b.z));
end;
end.