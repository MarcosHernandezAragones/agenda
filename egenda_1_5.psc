SubProceso añade(fila,columna,f,c,mNombres)
	Definir nombre,telf,cont Como Caracter;
	
	
	
	
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

SubProceso del(vNombres,tam,j,nombre,telf,eliminar)
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
FinSubProceso

SubProceso mostra(mNombres,fila,columna,nombre,telf,f,c)
	
	Para f=0 Hasta fila-1 Con Paso 1 Hacer
		Para c=0 Hasta columna-1 Con Paso 1 Hacer
			Escribir Sin Saltar mNombres[f,c]," ";
		Fin Para
		Escribir "";
	Fin Para
	
FinSubProceso



Algoritmo proyecto
	
	Definir mNombres Como Caracter;
	Definir nombre, telf, nombusqueda, cont, editar, eliminar Como Caracter;
	Definir aux, tam, i, j,f,c, fila, columna Como Entero;
	Definir interruptor Como Logico;
	
	//Escribir "dime cuantos contactos quieres guardar";
	//Leer fila;
	fila=10;
	columna=2;
	Dimension mNombres[fila,columna];
	
	Para f=0 Hasta fila-1 Con Paso 1 Hacer
		Para c=0 Hasta columna-1 Con Paso 1 Hacer
			mNombres[f,c]="";
		Fin Para
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
		Escribir "2 para mostrar todos los empleados con su teléfono.";
		Escribir "3 para eliminar un empleado.";
		Escribir "4  para editar un empleado.";
		Escribir "5 para salir de la aplicación.";
		Leer aux;
		Segun aux Hacer
			1:
				//--------------------------------------------------------------------------Añadir
				Escribir "Dime el nombre del empleado";
				leer nombre;
				Escribir "Dime el telefono del empleado";
				leer telf;
				
				Para f=0 Hasta fila-1 Con Paso 1 Hacer
					si (mNombres[f,c]== "") Entonces
						mNombres[f,0]=nombre;
						mNombres[f,1]=telf;
						f=fila;
					FinSi
				Fin Para
				
				//añade(fila,columna,f,c,mNombres);
			2:
				//----------------------------------------------------------------------------------editar
				Para f=0 Hasta fila-1 Con Paso 1 Hacer
					Escribir Sin Saltar mNombres[f,0]," ", mNombres[f,1];
					Escribir "";
				Fin Para
				//mostra(mNombres,fila,columna,nombre,telf,f,c);
			3:
				//----------------------------------------------------------------------------------borrar
				del(vNombres,tam,j,nombre,telf,eliminar);
			4:		
				//----------------------------------------------------------------------------------Mostrar todos
				edita(vNombres,j,nombre,telf,cont,tam);
			5:
				//----------------------------------------------------------------------------------Salir
				interruptor=falso;
		Fin Segun
	Hasta Que interruptor=falso;
	
FinAlgoritmo
