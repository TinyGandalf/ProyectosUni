Program DeterminarNecesidadTesteo;

// DE: temp (real), tos, dolorG, dificultadR, faltaG, faltaO (caracter ´s´ o ´n´)
// IMPORTANTE: Para los datos que tienen respuesta "SI o NO" usaremos en Pascal un caracter,
// 's' para SI y 'n' para NO.

//DS: testear (lógico)

var temp: real;
  tos, dolorG, dificultadR, faltaG, faltaO: char;
  testear: boolean;


begin
  writeln('CORONAVIRUS: Testeo segun sintomas asociados. Autora. JESSICA CARBALLIDO Fecha. 17/4/20');
  writeln('ESTE PROGRAMA REALIZA UNA SUGERENCIA SOBRE LA REALIZACION DEL TEST COVID-19');
  writeln;
  writeln('---- Ingrese a continuacion la siguiente informacion: ');

  // Ingreso de datos de entrada

  writeln('...Temperatura corporal: ');
  readln(temp);

  writeln('...Dolor de garganta? s para si, n para no: ');
  readln(dolorG);

  writeln('...Tos? s para si, n para no: ');
  readln(tos);

  writeln('...Falta de gusto? s para si, n para no: ');
  readln(faltaG);

  writeln('...Falta de olfato? s para si, n para no: ');
  readln(faltaO);

  writeln('...Dificultad para respirar? s para si, n para no: ');
  readln(dificultadR);

  // Procesamiento de los datos

  // Prestar mucha atencion a los parentesis de la expresion logica.
  // Cada sub-expresion (como dolorG='s') debe ir entre parentesis.
  // A su vez, tanto parte 1 como parte 2 de la expresion "grande" van con parentesis
  if (temp>=37.5) AND ((tos='s') OR (dolorG='s') OR (dificultadR='s') OR (faltaG='s') OR (faltaO='s'))
		then
		   testear := TRUE
		else
		   testear := FALSE;

  // Informe de los resultados obtenidos
  if (testear=TRUE)
                then writeln('Seria recomendable que se realice el test COVID-19')
                else writeln('No parece tener sintomas compatibles con Coronavirus');

  writeln('***** GRACIAS POR USAR NUESTRA APLICACION *****');
  readln;
end.
