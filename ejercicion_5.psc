SubProceso espa(i,nombre,aux)
	
	Para i=0 Hasta Longitud(nombre)-1 Con Paso 1 Hacer
		aux=Subcadena(nombre,i,i);
		Escribir Sin Saltar aux," ";
	Fin Para
	Escribir "";
	
FinSubProceso

Algoritmo Ejercicio_5
	Definir nombre, aux Como Caracter;
	Definir i Como Entero;
	
	Escribir "Dime una frase";
	Leer nombre;
	//nombre="Hola, t�";
	
	espa(i,nombre,aux);
FinAlgoritmo