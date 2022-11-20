var n, i, j, s: integer;
var a: array[1 .. 100, 1 .. 100] of integer;
begin
    read(n);
    for i := 1 to n do
        for j := 1 to n do
            read(a[i][j]);
    for i := 1 to n do
        a[i][i] := 0;
    for i := 1 to n do
    begin
        for j := 1 to n do
            write(a[i][j], ' ');
        writeln();
    end;

    s := 0;
    for i := 1 to n do
        for j := 1 to n do
            if i > (n - j + 1) then
                s := s + a[i][j];
    write(s);
end.