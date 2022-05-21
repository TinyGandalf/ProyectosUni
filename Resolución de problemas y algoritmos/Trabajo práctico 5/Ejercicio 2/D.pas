program D;
uses Windows;

var
  charActual, charPrevio : Char;
  terminado : Boolean;
begin
  charPrevio := #0;
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese una secuencia de letras terminada en #: ');

  repeat
    Read(charActual);

    if (charActual = '#') or (charActual = charPrevio) then
      terminado := true;

    charPrevio := charActual;
  until terminado;

  if (charActual <> '#') then
     WriteLn('Se repitió el caracter "', charActual, '".')
  else
    WriteLn('No se repitió ningún caracter.');

  ReadLn();  { Consumir el CRLF que quedó en el buffer }
  ReadLn();  { Pausar el programa }
end.

