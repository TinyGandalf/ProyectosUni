program ejF;
var a,b: integer;

begin
    a := 1;
    b := 1;
    if (a > b) then
    b := a;
    a := 0
    else
    a := b;
    b := 0;
end. 

// Incorrecto:
// El "if" cierra con el punto y coma ( b := a; ) y 
// comienza una nueva sentencia ( a := 0 ), por lo
// que se espera un ";" o un "end", no un "else".