program A;
uses Windows;

var
  charActual : Char;
  vocales : Integer;
  terminado : Boolean;
begin
  vocales := 0;
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese una secuencia de letras terminada en #: ');

  repeat
    Read(charActual);

    case charActual of
      'a','A','e','E','i','I','o','O','u','U':
        Inc(vocales);
      '#':
        terminado := true;
    end;
  until terminado;

  if (vocales > 1) then
     WriteLn('Habían ', vocales, ' vocales en la secuencia.')
  else if (vocales = 1) then
     WriteLn('Había ', vocales, ' vocal en la secuencia.')
  else
    WriteLn('No habían vocales en la secuencia.');

  ReadLn();  { Consumir el CRLF que quedó en el buffer }
  ReadLn();  { Pausar el programa }
end.

