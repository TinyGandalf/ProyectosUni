program A;
uses Windows;

var
  num, numActual, cuenta : Integer;
  terminado : Boolean;
begin
  cuenta := 0;
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese el número a buscar: ');
  ReadLn(num);

  Write('Ingrese una secuencia de enteros terminada en 0: ');

  repeat
    Read(numActual);

    if (numActual = 0) then
      terminado := true;
    if (numActual = num) then
      Inc(cuenta);
  until terminado;

  WriteLn('Cantidad de veces que apareció "', num, '": ', cuenta);
  ReadLn();  { Consumir el CRLF que quedó en el buffer }
  ReadLn();  { Pausar el programa }
end.

