program Ejercicio;
uses Windows;

function TransformarVocal(letra : Char) : Char;
begin
  case letra of
    'A','a':
      TransformarVocal := '@';
    'E','e':
      TransformarVocal := '#';
    'I','i':
      TransformarVocal := '$';
    'O','o':
      TransformarVocal := '%';
    'U','u':
      TransformarVocal := '&';
    otherwise
      TransformarVocal := letra;
  end;
end;

var
  letra : Char;
begin
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese el texto a transformar, terminando en punto: ');

  repeat
    Read(letra);

    Write(TransformarVocal(letra));
  until (letra = '.');

  ReadLn();
  ReadLn();
end.

