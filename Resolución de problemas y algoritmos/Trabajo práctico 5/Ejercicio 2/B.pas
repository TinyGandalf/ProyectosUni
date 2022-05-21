program B;
uses Windows;

var
  charActual : Char;
  terminado : Boolean;
begin
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese una secuencia de letras terminada en #: ');

  repeat
    Read(charActual);

    case charActual of
      '#','A'..'Z':
        terminado := true;
    end;
  until terminado;

  if (charActual <> '#') then
     WriteLn('Había al menos una letra mayúscula en la secuencia.')
  else
    WriteLn('No había ni una sola letra mayúscula en la secuencia.');

  ReadLn();  { Consumir el CRLF que quedó en el buffer }
  ReadLn();  { Pausar el programa }
end.

