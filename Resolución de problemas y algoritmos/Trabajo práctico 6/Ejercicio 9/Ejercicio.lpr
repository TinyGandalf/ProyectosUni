program Ejercicio;
uses Windows;

procedure ContarVocales(longitud : Integer; var mayus, minus : Integer);
var
  i : Integer;
  letra : Char;
begin
  for i := 1 to longitud do
    begin
      Read(letra);

      case letra of
        'A','E','I','O','U':
          Inc(mayus);
        'a','e','i','o','u':
          Inc(minus);
      end;
    end;

  ReadLn(); { Limpiar el buffer antes de volver al programa }
end;

var
  longitud, mayus, minus : Integer;
begin
  mayus := 0;
  minus := 0;

  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese la longitud de la secuencia: ');
  ReadLn(longitud);

  Write('Ingrese la secuencia: ');
  ContarVocales(longitud, mayus, minus);

  { Imprimir en formato 'cartel' }
  WriteLn('-------------------------------------------------');
  WriteLn('|                                               |');
  WriteLn('| La longitud del texto fue: ', longitud:3, '                |');
  WriteLn('| La cantidad de vocales mayúsculas fueron: ', mayus:3, ' |');
  WriteLn('| La cantidad de vocales minúsculas fueron: ', minus:3, ' |');
  WriteLn('|                                               |');
  WriteLn('-------------------------------------------------');
  WriteLn('                      |  |');
  WriteLn('     _________________|__|__________________');
  WriteLn('____/_______________________________________\_____');

  ReadLn();
end.

