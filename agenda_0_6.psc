Algoritmo proyecto
	
	Definir vNombres Como Caracter;
	Definir nombre, telf, nombusqueda, cont, editar, eliminar Como Caracter;
	Definir aux, tam, i, j Como Entero;
	Definir interruptor Como Logico;
	tam=10;
	Dimension vNombres[tam];
	
	
	Para i=0 Hasta tam -1 Con Paso 1 Hacer
		vNombres[i]= "";
	Fin Para
	
	cont="";
	aux=123456;
	interruptor=Verdadero;
	nombusqueda="";
	editar="";
	j=0;
	
	Escribir "Bienvenid@ a la aplicación ;)";
	
	Repetir
		Escribir "Pulsa la tecla 1 para añadir un empleado junto a su telefono.";
		Escribir "Pulsa la tecla 2 para editar un empleado.";
		Escribir "Pulsa la tecla 3 para eliminar un empleado.";
		Escribir "Pulsa la tecla 4 para buscar un empleado.";
		Escribir "Pulsa la tecla 5 para mostrar todos los empleados con su teléfono.";
		Escribir "Pulsa la tecla 6 para salir de la aplicación.";
		Leer aux;
		Segun aux Hacer
			1:
				Escribir "Dime el nombre del empleado";
				leer nombre;
				Escribir "Dime el telefono del empleado";
				leer telf;
				cont= nombre+";"+telf;
				Para i=0 Hasta tam -1 Con Paso 1 Hacer
					si (vNombres[i]== "") Entonces
						vNombres[i]= cont ;
						i=tam;
					FinSi
				Fin Para
			2:
				Escribir "Que empleado quieres editar";
				leer editar;
				
				Para i=0 Hasta tam -1 Con Paso 1 Hacer
					si (vNombres[i]<> "") Entonces
						si editar=nombre Entonces
							escribir "Dime el nuevo nombre";
							leer nombre;
						SiNo
							escribir "Ese usuario no existe";
						FinSi
						i=tam;
					FinSi
				Fin Para
			3:
				Escribir "Que empleado quieres borrar";
				leer eliminar;
				
				Para i=0 Hasta tam -1 Con Paso 1 Hacer
					si (vNombres[i]<> "") Entonces
						vNombres[i]= " " ;
						i=tam;
					FinSi
				Fin Para
			4:	
				Escribir "Que empleado quieres buscar";
				leer nombusqueda;
				
				Para i=0 Hasta tam -1 Con Paso 1 Hacer
					si (vNombres[i]== "") Entonces
						vNombres[i]= cont ;
						
						Para j=0 Hasta Longitud(Subcadena(vNombres[i],j,j))-1 Con Paso 1 Hacer
							Escribir vNombres[i];
							j=tam;
						Fin Para
						
						i=tam;
					FinSi
				Fin Para
			5:	
				Para i=0 Hasta tam -1 Con Paso 1 Hacer
				si (vNombres[i]<> "") Entonces
					Escribir vNombres[i];
				FinSi
			Fin Para
			6:
					interruptor=falso;
		Fin Segun
	Hasta Que interruptor=falso;
	
FinAlgoritmo
