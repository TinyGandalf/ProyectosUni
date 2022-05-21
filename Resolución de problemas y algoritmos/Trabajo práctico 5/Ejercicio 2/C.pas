program C;
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
      'a'..'z','A'..'Z':
        { No hacer nada };
      otherwise
        terminado := true;
    end;
  until terminado;

  if (charActual <> '#') then
     WriteLn('La secuencia NO solo contenía letras.')
  else
    WriteLn('La secuencia contenía solo letras (o no contenía nada).');

  ReadLn();  { Consumir el CRLF que quedó en el buffer }
  ReadLn();  { Pausar el programa }
end.

