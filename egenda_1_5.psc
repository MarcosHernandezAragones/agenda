SubProceso añade(f,fila,mNombres,c)
	
	Definir nombre,telf Como Caracter;
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
	
FinSubProceso

SubProceso mostra(f,fila,mNombres,c)
	
	Para f=0 Hasta fila-1 Con Paso 1 Hacer
		Si mNombres[f,c]<>"" Entonces
			Escribir mNombres[f,0] ," ", mNombres[f,1];
		Fin Si
	Fin Para
	
FinSubProceso

SubProceso del(f,fila,mNombres,c)
	Definir eliminar Como Caracter;
	
	Escribir "Que empleado quieres borrar";
	leer eliminar;
	Para f=0 Hasta fila-1 Con Paso 1 Hacer
		Si mNombres[f,0]=eliminar Entonces
			mNombres[f,c]=""
		Fin Si
	Fin Para
FinSubProceso

SubProceso edita(f,fila,mNombres,c)
	Definir editar, nombre, telf Como Caracter;	
	Escribir "Que empleado quieres editar";
	leer editar;
	
	Para f=0 Hasta fila-1 Con Paso 1 Hacer
		Si mNombres[f,0]=editar Entonces
			mNombres[f,c]="";
			Escribir "Dime su nuevo nombre";
			Leer nombre;
			Escribir "Dime su nuevo telefono";
			Leer telf
			mNombres[f,0]=nombre;
			mNombres[f,1]=telf;
			f=fila;
		Fin Si
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
		Escribir "4 para editar un empleado.";
		Escribir "5 para salir de la aplicación.";
		Leer aux;
		Segun aux Hacer
			1:
				//--------------------------------------------------------------------------Añadir
				añade(f,fila,mNombres,c);
			2:
				//----------------------------------------------------------------------------------editar
				mostra(f,fila,mNombres,c);
			3:
				//----------------------------------------------------------------------------------borrar
				del(f,fila,mNombres,c);
			4:		
				//----------------------------------------------------------------------------------Mostrar todos
				edita(f,fila,mNombres,c);
			5:
				//----------------------------------------------------------------------------------Salir
				interruptor=falso;
		Fin Segun
	Hasta Que interruptor=falso;
	
FinAlgoritmo
