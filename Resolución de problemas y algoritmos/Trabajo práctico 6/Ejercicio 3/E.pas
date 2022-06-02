program E;
uses Windows;

function CantVeces(dig, nro : Integer) : Integer;
begin
  CantVeces := 0;

  while nro > 0 do
    begin
      if dig = (nro mod 10) then
        Inc(CantVeces);

      nro := nro div 10;
    end;
end;

var
  num, i : Integer;
  especial : Boolean;
begin
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese el número que desea analizar: ');
  ReadLn(num);

  for i := 1 to 9 do
    if CantVeces(i, num) = i then
      begin
        especial := true;
        break;
      end;

  if especial then
    WriteLn(num, ' es especial porque "', i, '" aparece ', i, ' veces.')
  else
    WriteLn(num, ' no es especial.');

  ReadLn();
end.

