Algoritmo Ejercicio_puente
	Definir nombre, editar, buscar, eliminar Como Caracter;
	Definir telefono,i Como real;
	
	i=1;
	nombre="";
	editar="";
	buscar="";
	eliminar="";
	telefono=0;
	
	Repetir
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
			2:
				Escribir "Dime que usuario quieres modificar";
				leer editar;
				Si editar=nombre Entonces
					Escribir "Dome su nuevo numero de telefono";
					Leer telefono;
				SiNo
					Escribir "Usuario no esncontrado";
				Fin Si
			3:
				Escribir "Dime que usuario quieres buscar";
				Leer buscar;
				Si buscar=nombre Entonces
					Escribir "El usuario", buscar, "su telefono es ",telefono;
				SiNo
					Escribir "El usuario no esta registrado";
					i=3;
				Fin Si
			4:
				Escribir "Que usuario quieres eliminar";
				Leer eliminar;
				Si eliminar=nombre Entonces
					nombre="";
					telefono=0;
					Escribir "Se ha eliminado el usuario";
				SiNo
					Escribir "Usuario no encontrado";
				Fin Si
			5:
				Escribir "El usuario ",nombre, " tiene el telefono ",telefono," .";
		Fin Segun
		
	Hasta Que i=6
FinAlgoritmo
