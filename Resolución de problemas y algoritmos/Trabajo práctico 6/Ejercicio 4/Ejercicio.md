# Ejercicio 4

Explique la diferencia que hay entre parámetros por valor y por referencia en Pascal.

Indique cuántos parámetros por valor y cuántos por referencia hay en cada uno de los siguientes procedimientos y funciones:

1. PROCEDURE **Eje1** (var letra1, letra2 : Char; N1, N2 : Integer; var Error : Boolean);
2. PROCEDURE **Eje2** (var A : Char; var b : Integer; var c : Boolean);
3. FUNCTION **F1** (a, b : Integer; es : Boolean) : Real;
4. FUNCTION **LeeLetra** : Char;
5. FUNCTION **LeeNumero** (l : Char; var error : Boolean) : Integer;

## Solución
1. ***3*** por referencia y ***2*** por valor: letra1, letra2 y Error son pasados por referencia, mientras que N1 y N2 son pasados por valor.
2. ***3*** por referencia y ***ninguno*** por valor: A, b y c son pasados por referencia.
3. ***Ninguno*** por referencia y ***3*** por valor: a, b y es son pasados por valor.
4. ***Ninguno*** por referencia y ***ninguno*** por valor: la función no toma ningún argumento.
5. ***1*** por referencia y ***1*** por valor: error es pasado por referencia, mientras que l es pasado por valor.