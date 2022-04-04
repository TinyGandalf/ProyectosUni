program ejG;
var a,b: integer;

begin
    a := 1; b := 1;
    if (a = b) then
        begin
            a:=1;
            b:=2;
        end
    else
        a:=2;
        b:=1;
end. 

// Correcto (mala indentación)
/// A = 1
/// B = 1

{
    Indentación corregida:

    begin
        a := 1;
        b := 1;

        if (a = b) then
        begin
            a:=1;
            b:=2;
        end
        else
            a:=2;

        b:=1;
    end.
}