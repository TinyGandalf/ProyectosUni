program D;
uses Windows;

var
  n, i : Integer;
  numActual : Real;
begin
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
        begin
          WriteLn('El número negativo se encuentra en la posición #', i);
          break;
        end
      else if (i = n) then
        WriteLn('El número negativo se encuentra en la posición #0 (no hay)');
    end;

  ReadLn();  { Consumir CRLF }
  ReadLn();  { Pausar programa }
end.

