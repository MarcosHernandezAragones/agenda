Algoritmo Egenda_0_5
	Definir vContacto Como Caracter;
	
	Definir nombre, telefono, nomcom, editar, buscar, eliminar Como Caracter;
	Definir i,tam Como real;
	
	i=1;
	tam=10;
	Dimension  vContacto[tam];
	//---------------------------------------------------------iniciar vector
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		vContacto[i]="";
	Fin Para
	//---------------------------------------------------------fin vector
	nombre="";
	telefono="";
	nomcom="";
	editar="";
	buscar="";
	eliminar="";
	
	Repetir
		Escribir "Buenas";
		Escribir"Dime lo que quieres hacer.";
		Escribir "1 añadir un usuario";
		Escribir "2 para editar el usuario";
		Escribir "3 para buscar un usuario";
		Escribir "4 para eliminar el usuario";
		Escribir "5 para ver todos los empleados";
		Escribir "6 para salir";
		Leer i;
		Segun i Hacer
			1:
				Escribir "Dame el nombre del Usuario";
				Leer nombre;
				Escribir "Dame su telefono";
				Leer telefono;
				nomcom=nombre+";"+telefono;
				//Encontrar hueco y guardar
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					Si vContacto[i]=="" Entonces
						//----------------------------------------------------guardo
						vContacto[i]=nomcom;
						//----------------------------------------------------romper
						i=tam;
					Fin Si
				Fin Para
			2:
				
				Escribir "Dime que usuario quieres modificar";
				leer editar;
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					
					Si editar==vContacto[i] Entonces
						Escribir "Dome su nuevo numero de telefono";
						Leer vContacto[i+1];
						i=tam;
					SiNo
						Escribir "Usuario no esncontrado";
						i=tam;
					Fin Si
					
				Fin Para
				
				
			3:
				Escribir "Dime que usuario quieres buscar";
				Leer buscar;
				Si buscar==nombre Entonces
					Escribir "El usuario", buscar, "su telefono es ",telefono;
				SiNo
					Escribir "El usuario no esta registrado";
					i=3;
				Fin Si
			4:
				Escribir "Que usuario quieres eliminar";
				Leer eliminar;
				Si eliminar==nombre Entonces
					nombre="";
					telefono="";
					Escribir "Se ha eliminado el usuario";
				SiNo
					Escribir "Usuario no encontrado";
				Fin Si
			5:
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					Si vContacto[i]<>"" Entonces
						Escribir vContacto[i];
					Fin Si
					
					
				Fin Para
				
				//Escribir "El usuario ",vContacto[j], " tiene el telefono ",vContacto[j]," .";
		Fin Segun
		
		
		
	Hasta Que i=6
	Escribir "Adios guapo";
FinAlgoritmo
