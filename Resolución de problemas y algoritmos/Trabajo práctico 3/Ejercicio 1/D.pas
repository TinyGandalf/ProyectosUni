program ejD;
var a,b: integer;

begin
    a:=1;   b:=1;
    if 3 > 3 then
    if not(2 > 3) then
        a := 1
    else
        a := 2
    else
    a:=3;
end.

// Correcto (mala indentación y código inaccesible)
// Valores finales:
/// A = 3
/// B = 1

{
    Indentación corregida:

    begin
        a:=1; 
        b:=1;

        if 3 > 3 then
            if not(2 > 3) then
                a := 1
            else
                a := 2
        else
            a:=3;
    end.

    Sin embargo, como 3 > 3 siempre se va a evaluar como falso, el código dentro
    del "if" nunca se ejecuta, solo el del "else".
    Quitando el código inaccesible:

    begin
        a:=1; 
        b:=1;

        a:=3;
    end.
}