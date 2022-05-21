program A;
uses Windows;

var
  n, i : Integer;
  numA, numB : Real;
  parIgual : Boolean;
begin
  SetConsoleOutputCP(CP_UTF8);

  repeat
    Write('Ingrese la cantidad de pares en la secuencia: ');
    ReadLn(n);

    if (n < 1) then
      begin
        WriteLn('La cantidad debe ser mayor que cero.');
      end;
  until (n >= 1);

  Write('Ingrese la secuencia de números, separada por espacios: ');

  for i := 1 to n do
    begin
      Read(numA);
      Read(numB);

      if (numA = numB) then
        begin
          parIgual := true;
          break;
        end;
    end;

  if parIgual then
    begin
      WriteLn('Hay al menos un par consecutivo igual.');
    end
  else
    WriteLn('No hay un par consecutivo igual.');

  ReadLn();  { Consumir CRLF }
  ReadLn();  { Pausar programa }
end.

