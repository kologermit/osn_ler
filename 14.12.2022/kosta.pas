type runner = record
   fullName: string;
   patronymic: string;
   surname: string;
   yearBirth: integer;
   gender: string;
   placeOfLiving: string;
   weight: real;
   height: real;
   result100m: real;
   result200m: real;
   averageResult: real;
end;

var runners: array[1 .. 100] of runner;
var count_runners, i, output_format: integer;
var key: string;
var first, second: real;

procedure read_runners();
begin
   write('count runners: ');
   read(count_runners);
   for i := 1 to count_runners do
   begin
      writeln('Runner #', i);
      write('Name: ');
      while length(runners[i].fullName) = 0 do
         readln(runners[i].fullName);
      write('Patronymic: ');
      while length(runners[i].patronymic) = 0 do
         readln(runners[i].patronymic);
      write('Surname: ');
      while length(runners[i].surname) = 0 do
         readln(runners[i].surname);
      write('Year of birth: ');
      read(runners[i].yearBirth);
      write('Gender: ');
      while length(runners[i].gender) = 0 do
         readln(runners[i].gender);
      write('Place of living: ');
      while length(runners[i].placeOfLiving) = 0 do
         readln(runners[i].placeOfLiving);
      write('Weight: ');
      read(runners[i].weight);
      write('Height: ');
      read(runners[i].height);
      write('Result of run 100m: ');
      read(runners[i].result100m);
      write('Result of run 200m: ');
      read(runners[i].result200m);
      runners[i].averageResult := (runners[i].result100m + runners[i].result200m) / 2;
      writeln('Average result: ', runners[i].averageResult:1:4);
      writeln();
   end;
end;

procedure question_about_output();
begin
   writeln('By which parameter to output data:');
   writeln('1. Average result');
   writeln('2. The last 3 letters in the surname');
   writeln('3. By gender');
   output_format := 0;
   while not((output_format >= 1) and (output_format <= 3))  do
      read(output_format);
end;

procedure write_runner(r: runner);
begin
   writeln('Name: ', r.fullName);
   writeln('Patronymic: ', r.patronymic);
   writeln('Surname: ', r.surname);
   writeln('Year of birth: ', r.yearBirth);
   writeln('Genger: ', r.gender);
   writeln('Place of living: ', r.placeOfLiving);
   writeln('Weight: ', r.weight:1:4);
   writeln('Height: ', r.height:1:4);
   writeln('Result of run 100m: ', r.result100m:1:4);
   writeln('Result of run 200m: ', r.result200m:1:4);
   writeln('Average result: ', r.averageResult:1:4);
   writeln('-----------------------------------');
end;

procedure output_runners();
begin
   if output_format = 1 then
   begin
      write('From: ');
      read(first);
      write('To: ');
      read(second);
      for i := 1 to count_runners do
         if (runners[i].averageResult >= first) and (runners[i].averageResult <= second) then
            write_runner(runners[i]);
   end;
   if output_format = 2 then
   begin
      write('Which last 3 characters will be searched for: ');
      while length(key) <> 3 do
         readln(key);
      for i := 1 to count_runners do
         if copy(runners[i].surname, length(runners[i].surname) - 2, 3) = key then
            write_runner(runners[i]);
   end;
   if output_format = 3 then
   begin
      write('Which gender will the search be performed: ');
      while length(key) = 0 do
         readln(key);
      for i := 1 to count_runners do
         if runners[i].gender = key then
            write_runner(runners[i]);
   end;
end;

begin
   read_runners();
   question_about_output();
   output_runners();
end.