program ejH;
var a,b: integer;

begin
    a := 1; b := 2;
    if (a >= b) then
     if (a=b) then
      begin
       a:=1;
       b:=2;
      end
    else
     a:=2;
end. 

// Correcto (mala indentación)
/// A = 1
/// B = 2

{
    Indentación corregida:

    begin
        a := 1;
        b := 2;

        if (a >= b) then
            if (a=b) then
            begin
                a:=1;
                b:=2;
            end
            else
                a:=2;
    end.
}