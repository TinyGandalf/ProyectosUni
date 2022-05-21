program B;
uses Windows;

var
  numActual : Integer;
  terminado : Boolean;
begin
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese una secuencia de enteros terminada en 0: ');

  repeat
    Read(numActual);

    if (numActual = 0) or (numActual mod 5 = 0) then
      terminado := true;
  until terminado;

  if (numActual <> 0) then
     WriteLn('Había un múltiplo de 5 en la secuencia.')
  else
    WriteLn('No había un múltiplo de 5 en la secuencia.');
  ReadLn();  { Consumir el CRLF que quedó en el buffer }
  ReadLn();  { Pausar el programa }
end.

