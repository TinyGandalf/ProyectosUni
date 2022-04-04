program ejE;
var a,b: integer; 

begin
    a := 1; b := 1;
    if (a:=2)>(b:=1) then
     a := b
    else
     b := a
    end;
end. 

// Incorrecto:
// Hay una asignación dentro de la condición del "if".
// Hay un "end;" luego del else, pero no hay un "begin" que le corresponda.