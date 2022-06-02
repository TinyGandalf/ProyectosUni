# Ejercicio 5

Analizar cuáles de las invocaciones a procedimientos o funciones detalladas a continuación son correctas, habiendo declarado:

 - VAR **w**: Char; **x**: Integer; **y**: Real; **z**: Boolean;
 - PROCEDURE **A** (a,b: Integer; var c: Char);
 - FUNCTION **B** (x: char): Real;
 - FUNCTION **C** (a: Real; b: Boolean): Integer;

1. A(7, y, w);
2. A((7, y, c);
3. A(27, x, w, w);
4. A(2.4, 5+8, w);
5. A(7, 5, 'c');
6. x := B(w);
7. y := B(w);
8. y := B(‘x’);
9. B(w);
10. x := C(y, false); 
11. y := C(y, true);
12. x := C(3+5, z);
13. x := C(3.5+y, z);

## Solución

### 1. A(7, y, w);
**Incorrecta**: **'y'** es Real, pero el argumento toma Integer.
### 2. A((7, y, c);
**Incorrecta**: **'y'** es Real, pero el argumento toma Integer; **'c'** es una función, por lo que no puede ser pasada como un argumento tipo Char; y hay un parentesis abierto de más.
### 3. A(27, x, w, w);
**Incorrecta**: A toma solo 3 argumentos, pero se pasaron 4.
### 4. A(2.4, 5+8, w);
**Incorrecta**: **2.4** es Double, pero el argumento toma Integer.
### 5. A(7, 5, 'c');
**Incorrecta**: El argumento **'c'** requiere una variable, no un literal.
### 6. x := B(w);
**Incorrecta**: **'B'** devuelve Real, mientras que **'x'** es del tipo Integer.
### 7. y := B(w);
**Correcta**.
### 8. y := B(‘x’);
**Incorrecta**: Las tildes ( **´´** ) no son una manera válida para declar  ar un Char literal. Se deberían usar los apóstrofes ( **''** ).
### 9.  B(w);
**Correcta**, aunque el valor devuelto se descarta.
### 10. x := C(y, false);
**Correcta**.
### 11. y := C(y, true);
**Correcta**: un Integer se puede convertir implícitamente a un Real.
### 12. x := C(3+5, z); 
**Correcta**: un Integer se puede convertir implícitamente a un Real.
### 13. x := C(3.5+y, z);
**Correcta**.