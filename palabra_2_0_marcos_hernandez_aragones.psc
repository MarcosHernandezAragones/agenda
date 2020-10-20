Algoritmo palabra_2_0

	Definir frase,palabra Como Caracter;
	Definir i,cont Como Entero;
	
	frase="";
	palabra="";
	cont=0;
	
<<<<<<< HEAD
	Escribir "Dime una frase"
	Leer frase;
	
	Escribir "Dime una palabra"
=======
	Escribir "Dime una frase";
	Leer frase;
	
	Escribir "Dime una palabra";
>>>>>>> main
	Leer palabra;
	
	frase=Minusculas(frase);
	palabra=Minusculas(palabra);
	
	Para i=0 Hasta Longitud(frase)-1 Con Paso 1 Hacer
		Si (Subcadena(frase,i,i+(Longitud(palabra)-1))=palabra y Subcadena(frase,i-1,i-1)=" " o Subcadena(frase,i-1,i-1)="" y Subcadena(frase,i+Longitud(palabra),i+Longitud(palabra))=" " o Subcadena(frase,i+Longitud(palabra),i+Longitud(palabra))="") Entonces
<<<<<<< HEAD
			cont=cont+1
=======
			cont=cont+1;
>>>>>>> main
		Fin Si
	Fin Para

	
	Escribir "La palabra ", palabra , " que aparece en la frase ", cont, " veces";
FinAlgoritmo
