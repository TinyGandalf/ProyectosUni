program Ejercicio;
uses Windows;

procedure MostrarDivisores(numero : Integer);
var
  i, limite : Integer;
  primo : Boolean;
begin
  Write(numero,':'#9'1 ');

  primo := true;
  numero := Abs(numero);
  limite := numero div 2;

  for i := 2 to limite do
    if (numero mod i) = 0 then
      begin
        Write(i, ' ');
        primo := false;
      end;

  Write(numero);

  if primo then
    WriteLn(#9'Es número primo')
  else
    WriteLn(#9'No es número primo');
end;

var
  num : Integer;
begin
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese la secuencia que desea analizar, terminando en cero: ');

  repeat
    Read(num);

    if num <> 0 then
      MostrarDivisores(num);
  until (num = 0);

  ReadLn();
  ReadLn();
end.

