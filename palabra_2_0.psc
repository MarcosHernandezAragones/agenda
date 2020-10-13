





	Definir frase,palabra,aux, aux2 Como Caracter;
	Definir i,j,conta Como Entero;
	
	frase="Hola que tal me llamo Marcos";
	palabra="";
	aux="";
	aux2="";
	i=0;
	j=0;
	conta=0;
	
	//Escribir "Dime una frase"
	//Leer frase;
	
	Escribir "Dime una palabra"
	Leer palabra;
	
	frase=Minusculas(frase);
	palabra=Minusculas(palabra);
	
	Para i=0 hasta Longitud(frase) Con Paso 1 Hacer
        Para j=0 hasta Longitud(palabra) Con Paso 1 Hacer
			
            Si (Subcadena(frase,i,i)=Subcadena(palabra,j,j)) Entonces
                //conta<-conta+1
				aux=Subcadena(palabra,j,j);
				Escribir Sin Saltar aux
				aux2=aux2+aux;
				Si aux2=palabra Entonces
					Escribir "adios";
				Fin Si
            FinSi

        FinPara

    FinPara

	
	//Escribir conta;
FinAlgoritmo
