%--------------------%
%Metodos Numericos 2017 
%Alumno: Franco Torres
%Carrera: Ingenieria Electricista
%Github User: @Torresfranco
%--------------------%
%TP N°1; Ejercicio 9
%
%El programa binadec.m convierte un numero que esta en base binaria en un numero decimal, separando el numero binario en
%su parte entera y su parte decimal, las cuales se convierten a decimal por separado y se suman sus resultados

%se solicita el ingreso de un numero binario en forma de vector horizontal,
%esto se realizara ingresando por separado su parte entera y su parte decimal

Int=input('ingresar parte entera del numero binario= ');
Dec=input('ingresar parte decimal del numero binario= ');

%el programa calcula las longitudes de ambos vectores 
le = length(Int);
ld = length(Dec);

%En este punto del programa se convierte el vector que contiene la parte entera del numero binario a su equivalente decimal,
if le ~= 0  
   k = le-1;
   sumar = 0;

    for i = 1:le
          
        sumar = sumar + (Int(i)*2^k);
    
        k = k-1;
    end
else
   sumar=0;
end

%Ahora el programa convierte la parte decimal del numero binario a decimal%
if ld~=0     
    sumad=0;

    for j = 1:ld
        sumad = sumad + (Dec(j)*2^-j);
    end
else 
    sumad = 0;
end
N = sumad + sumar;
disp('el numero decimal obtenido es:')
disp(N)
   