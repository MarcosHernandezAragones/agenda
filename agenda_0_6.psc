SubProceso añade(tam,vNombres)
	Definir i Como Entero;
	Definir nombre,telf,cont Como Caracter;
	
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
FinSubProceso

SubProceso edita(vNombres,j,nombre,telf,cont,tam)
	Definir i Como Entero;
	Definir editar Como Caracter;
	
	Escribir "Que empleado quieres editar";
	leer editar;
	
	Para i=0 Hasta tam -1 Con Paso 1 Hacer
		si (vNombres[i]<> "") Entonces
			Para j=0 Hasta Longitud(vNombres[i])-1 Con Paso 1 Hacer
				Si (Subcadena(vNombres[i],j,j)==";") Entonces
					nombre=Subcadena(vNombres[i],0,j-1);
					telf=Subcadena(vNombres[i],j+1,Longitud(vNombres[i])-1);
				Fin Si
			Fin Para
			
			si editar=nombre Entonces
				vNombres[i]="";
				escribir "Dime el nuevo nombre";
				leer nombre;
				Escribir "Dime el nuevo telefono";
				Leer telf;
				cont= nombre+";"+telf;
				vNombres[i]= cont;
			FinSi
			
		FinSi
	FinPara
FinSubProceso

SubProceso del()
	
FinSubProceso



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
		Escribir "1 para añadir un empleado junto a su telefono.";
		Escribir "2 para editar un empleado.";
		Escribir "3 para eliminar un empleado.";
		Escribir "4 para buscar un empleado.";
		Escribir "5 para mostrar todos los empleados con su teléfono.";
		Escribir "6 para salir de la aplicación.";
		Leer aux;
		Segun aux Hacer
			1:
				//--------------------------------------------------------------------------Añadir
				añade(tam,vNombres);
			2:
				//----------------------------------------------------------------------------------editar
				edita(vNombres,j,nombre,telf,cont,tam);
			3:
				//----------------------------------------------------------------------------------borrar
				Escribir "Que empleado quieres borrar";
				leer eliminar;
				
				Para i=0 Hasta tam -1 Con Paso 1 Hacer
					si (vNombres[i]<> "") Entonces
						Para j=0 Hasta Longitud(vNombres[i])-1 Con Paso 1 Hacer
							Si (Subcadena(vNombres[i],j,j)==";") Entonces
								nombre=Subcadena(vNombres[i],0,j-1);
								telf=Subcadena(vNombres[i],j+1,Longitud(vNombres[i])-1);
							Fin Si
						Fin Para
						Si eliminar==nombre Entonces
							vNombres[i]="";
						Fin Si
					FinSi
				Fin Para
				del(vNombres,tam,j,);
				
			4:	
				//----------------------------------------------------------------------------------Buscar
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
				//----------------------------------------------------------------------------------Mostrar todos
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
				//----------------------------------------------------------------------------------Salir
				interruptor=falso;
		Fin Segun
	Hasta Que interruptor=falso;
	
FinAlgoritmo
