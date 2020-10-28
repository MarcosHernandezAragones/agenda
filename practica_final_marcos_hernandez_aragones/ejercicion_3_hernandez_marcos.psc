SubProceso az(i,fila,j,columna,mNum)
	Para i=0 Hasta fila-1 Con Paso 1 Hacer
		Para j=0 Hasta columna-1 Con Paso 1 Hacer
			mNum[i,j]=azar(9);
		Fin Para
	Fin Para
FinSubProceso

SubProceso mos(i,fila,j,columna,mNum)
	
	Para i=0 Hasta fila-1 Con Paso 1 Hacer
		Para j=0 Hasta columna-1 Con Paso 1 Hacer
			Escribir Sin Saltar mNum[i,j]," ";
			
		Fin Para
		Escribir "";
	Fin Para
	
FinSubProceso

Algoritmo ejercicio_3
	Definir mNum Como Entero;
	Definir fila, columna,i,j Como Entero;
	
	Escribir "Dime las filas y las columnas"
	Leer fila;
	Leer columna;
	
	Dimension mNum[fila,columna];
	
	
	az(i,fila,j,columna,mNum);
	
	mos(i,fila,j,columna,mNum);
	
FinAlgoritmo
