Funcion correccion<-nombrecorre(nombre)
	
    Definir i Como Entero;
    Definir correccion Como Caracter;
	
    nombre=Minusculas(nombre);
    correccion="";
    correccion=Mayusculas(Subcadena(nombre,0,0));
    Para i=1 Hasta Longitud(nombre)-1 Con Paso 1 Hacer
        Si Subcadena(nombre,i,i)==" " Entonces
            correccion=correccion+Mayusculas(Subcadena(nombre,i,i+1));
            i=i+1;
        SiNo
            correccion=correccion+Minusculas(Subcadena(nombre,i,i));
        Fin Si
    Fin Para
	
FinFuncion


Algoritmo ejercicio4
	
    definir nombre Como Caracter;
	
    Escribir "Dime Un nombre y apellidos";
	Leer nombre
	
    nombre=nombrecorre(nombre);
	
    Escribir nombre;
	
	
FinAlgoritmo