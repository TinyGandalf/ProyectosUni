program F;
uses Windows;

function EsVocal(car : Char) : Boolean;
begin
  case car of
    'A','E','I','O','U','a','e','i','o','u':
      EsVocal := true;
    otherwise
      EsVocal := false;
  end;
end;

var
  car : Char;
begin
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese un caracter: ');
  ReadLn(car);

  if EsVocal(car) then
    WriteLn('SI ES VOCAL')
  else
    WriteLn('NO ES VOCAL');

  ReadLn();
end.

