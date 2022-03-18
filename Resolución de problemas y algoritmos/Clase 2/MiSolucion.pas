// DeboTomarTest
// Aplicación que ayuda al usuario a determinar si debería realizarse
// un test de COVID-19 según sus síntomas.
//
// Datos de entrada:
//     temp : Real = Temperatura corporal
//     soreThroat: Boolean = ¿Sufre dolor de garganta?
//     breathingDiff: Boolean = ¿Sufre dificultad respiratoria?
//     lacksSmell: Boolean = ¿Sufre falta de olfato?
//     lacksTaste: Boolean = ¿Sufre falta de gusto?
//     coughing: Boolean = ¿Sufre de tos?
//  
// Datos de salida:
//     shouldTakeTest: Boolean = Si el usuario debe tomar el test o no.

program DeboTomarTest;
uses
    SysUtils,    // TryStrToFloat
    Windows;    // SetConsoleOutputCP

// Le pide al usuario que ingrese un valor real.
// Si la entrada es inválida, se lo vuelve a pedir hasta que coopere.
function AskForReal(question: string): real;
var
    response : string;
    validResponse: boolean;
begin
    write(#9 + question + ' : ');
    
    repeat
        readln(response);

        validResponse := TryStrToFloat(response, AskForReal);

        if not validResponse then
            write(#9'Entrada incorrecta. Ingrese un número valido (ej.: 37,5): ');
    until validResponse;
end;

// Le pide al usuario que ingrese un valor lógico, a la cual puede responder S o s para True, N o n para False.
// Si la entrada es inválida, se lo vuelve a pedir hasta que coopere.
function AskForBoolean(question: string): boolean;
var
    response : string;
    validResponse: boolean;
begin
    write(#9 + question + ' (S para Si, N para No): ');

    repeat
        readln(response);

        validResponse := (response = 'S') or (response = 's') or (response = 'N') or (response = 'n');

        if not validResponse then
            write(#9'Opción incorrecta. Escriba S para Si o N para No: ');
    until validResponse;

    AskForBoolean := (response = 'S') or (response = 's');
end;

// Programa
const
    feverTemp : real = 37.5;
var
    temp : real;
    soreThroat: boolean;
    breathingDiff: boolean;
    lacksSmell: boolean;
    lacksTaste: boolean;
    coughing: boolean;

    shouldTakeTest: boolean;
begin
    SetConsoleOutputCP(CP_UTF8);    // Para mostrar acentos y simbolos especiales (Win10)

    writeln('¡Bienvenido!');
    writeln('Responda las siguientes preguntas para determinar si debe realizarse un test de COVID-19:');

    temp          := AskForReal('Indique su temperatura corporal');
    soreThroat    := AskForBoolean('¿Le duele la garganta?');
    breathingDiff := AskForBoolean('¿Tiene dificultad para respirar?');
    lacksSmell    := AskForBoolean('¿Tiene falta el olfato?');
    lacksTaste    := AskForBoolean('¿Tiene falta el gusto?');
    coughing      := AskForBoolean('¿Tiene tos?');
    
    shouldTakeTest := (temp >= feverTemp) and (soreThroat or breathingDiff or lacksSmell or lacksTaste or coughing);

    if shouldTakeTest then
        writeln(#7#13#10'Usted debería realizarse un test de COVID-19.')
    else
        writeln(#7#13#10'Usted NO debería realizarse un test de COVID-19.');

    readln();
end.
