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
	
	Escribir "Bienvenid@ a la aplicaci�n ;)";
	
	Repetir
		Escribir "1 para a�adir un empleado junto a su telefono.";
		Escribir "2 para editar un empleado.";
		Escribir "3 para eliminar un empleado.";
		Escribir "4 para buscar un empleado.";
		Escribir "5 para mostrar todos los empleados con su tel�fono.";
		Escribir "6 para salir de la aplicaci�n.";
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
					si (vNombres[i]<>"") Entonces
						nombre="";
						telf="";
						
						Para j=0 Hasta Longitud(vNombres[i])-1 Con Paso 1 Hacer
							Si (Subcadena(vNombres[i],j,j)==";") Entonces
								nombre=Subcadena(vNombres[i],0,j-1);
								telf=Subcadena(vNombres[i],j+1,Longitud(vNombres[i])-1);
							Fin Si
						Fin Para
						Si ((nombusqueda==nombre) o (nombusqueda==telf)) Entonces
							Escribir nombre + " " + telf;
						Fin Si
						
					FinSi
				Fin Para
			5:	
				Para i=0 Hasta tam -1 Con Paso 1 Hacer
					si (vNombres[i]<> "") Entonces
						Para j=0 Hasta Longitud(vNombres[i])-1 Con Paso 1 Hacer
							Si (Subcadena(vNombres[i],j,j)==";") Entonces
								nombre=Subcadena(vNombres[i],0,j-1);
								telf=Subcadena(vNombres[i],j+1,Longitud(vNombres[i])-1);
							Fin Si
						Fin Para
						
						Escribir nombre + " " + telf;
					FinSi
				Fin Para
			6:
					interruptor=falso;
		Fin Segun
	Hasta Que interruptor=falso;
	
FinAlgoritmo
