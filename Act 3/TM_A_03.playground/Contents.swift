import UIKit
/*:
# Playground - Actividad 3
* Tipos de datos
* Asociación de tipos
* Arreglos y Diccionarios
*/


/*: 
### Actividad de Tipos de datos
A) Declarar cuatro variables con tres diferentes tipos de datos, cada uno que corresponda a una numero entero, un numero decimal (flotante), una cadena de texto, realizando la asignación explicita y la asignación inferida
*/
var numero = 300;
var nombre:String = "Tenorio";
var cualquiera = 3.1416;
var number:Int = 32;
/*:
### Asociación de tipos
A) Declara el tipo de dato por asociación para un tipo de dato String
*/
var str:String;
//: B) Declara el tipo de dato por asociación para un tipo de dato  Número entero.
var nt:Int;
/*: 
### Arreglos y Diccionarios
A) Crea la variable "numeros" de tipo Array con números consecutivos del 1 a 10.
*/
var numeros = [1,2,3,4,5,6,7,8,9,10];
//: B) Crea la variable "diasSemana" de tipo Dictionary con la relación numero:día Ej. 1:"Lunes"
var diasSemana = ["Lunes":1,"Martes":2,"Miercoles":3,"Jueves":4,"Viernes":5,"Sabado":6,"Domingo":7];
/*:
### Condicionales y Ciclos
A) Declarar la variable "datos" con los valores [3,6,9,2,4,1]
*/
var datos = [3,6,9,2,4,1];
//: B) realizar el recorrido de la variable "datos" con la instrucción "for"
for item in datos{
    print(item);
}
//: C) Encontrar los valores menores a 5

for item in datos{
    if (item < 5){
        print(item);
    }
}
