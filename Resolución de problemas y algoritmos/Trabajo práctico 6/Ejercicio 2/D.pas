program D;
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
  dig, nro, veces : Integer;
begin
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese un número: ');
  ReadLn(nro);
  Write('Ingrese un dígito: ');
  ReadLn(dig);

  veces := CantVeces(dig, nro);

  WriteLn('El dígito ', dig, ' aparece ', veces, ' veces en ', nro);

  ReadLn();
end.

