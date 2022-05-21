program E;
uses Windows;

var
  n, i, pos : Integer;
  numActual : Real;
begin
  pos := -1;
  SetConsoleOutputCP(CP_UTF8);

  repeat
    Write('Ingrese la cantidad de números en la secuencia: ');
    ReadLn(n);

    if (n < 1) then
      begin
        WriteLn('La cantidad debe ser mayor que cero.');
      end;
  until (n >= 1);

  Write('Ingrese la secuencia de números, separada por espacios: ');

  for i := 1 to n do
    begin
      Read(numActual);

      if (numActual < 0) then
        pos := i;
    end;

  if (pos > 0) then
    begin
      WriteLn('El último número negativo se encuentra en la posición #', pos);
    end
  else
    WriteLn('El último número negativo se encuentra en la posición #0 (no hay)');

  ReadLn();  { Consumir CRLF }
  ReadLn();  { Pausar programa }
end.

