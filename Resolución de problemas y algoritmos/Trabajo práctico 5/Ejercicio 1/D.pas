program D;
uses Windows;

var
  numActual, numAnterior, pares : Integer;
  terminado : Boolean;
begin
  pares := 0;
  numAnterior := 0;
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese una secuencia de enteros terminada en 0: ');

  repeat
    Read(numActual);

    if (numActual = numAnterior) and (numActual <> 0) then
       Inc(pares);
    if (numActual = 0) then
      terminado := true;

    numAnterior := numActual;
  until terminado;

  if (pares > 1) then
     WriteLn('Habían ', pares, ' pares iguales en la secuencia.')
  else if (pares = 1) then
     WriteLn('Había ', pares, ' par igual en la secuencia.')
  else
    WriteLn('No habían pares iguales en la secuencia.');
  ReadLn();  { Consumir el CRLF que quedó en el buffer }
  ReadLn();  { Pausar el programa }
end.

