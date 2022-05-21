program C;
uses Windows;

var
  n, i : Integer;
  numActual, suma : Real;
begin
  suma := 0;
  SetConsoleOutputCP(CP_UTF8);

  repeat
    Write('Ingrese la cantidad de números en la secuencia: ');
    ReadLn(n);

    if (n < 1) then
      begin
        WriteLn('La cantidad debe ser mayor que cero.');
      end;
  until (n >= 1);

  for i := 1 to n do
    begin
      Write('Ingrese el número #', i, ': ');
      ReadLn(numActual);

      suma += (numActual + Abs(numActual)) / 2.0;
    end;

  WriteLn('La suma de los números positivos ingresados fue: ', suma:0:3);

  ReadLn();
end.

