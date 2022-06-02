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
  ch : Char;
  vocal, dobleVocal : Boolean;
begin
  vocal := false;
  dobleVocal := false;
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese el texto que desea analizar, terminado con #: ');

  repeat
    Read(ch);

    if EsVocal(ch) then
      if vocal then
        dobleVocal := true
      else
        vocal := true
    else
      vocal := false;
  until (ch = '#') or dobleVocal;

  if dobleVocal then
    WriteLn('En el texto habían dos vocales juntas.')
  else
    WriteLn('En el texto NO habían dos vocales juntas.');

  ReadLn();
  ReadLn();
end.

