SubProceso mos(i,tam,vNombres,vEdad)
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		Escribir vNombres[i], " ", vEdad[i],"";
	Fin Para
FinSubProceso

Algoritmo ejercicio_2
	Definir vNombres, vEdad, nombre, edad Como Caracter;
	Definir tam,i Como Entero;
	
	Escribir "Diem el tamaño de los vectores"
	Leer tam;
	
	Dimension vNombres[tam];
	Dimension vEdad[tam];
	
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		vNombres[i]="";
		vEdad[i]="";
	Fin Para
	
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		Si vNombres[i]=="" Entonces
			Escribir "dime un nombre"
			Leer nombre
			vNombres[i]=nombre;
		Fin Si
		
		Si vEdad[i]=="" Entonces
			Escribir "Dime su edad"
			Leer edad
			vEdad[i]=edad;
		Fin Si
	Fin Para
	
	
	
	mos(i,tam,vNombres,vEdad)
	
	
FinAlgoritmo
