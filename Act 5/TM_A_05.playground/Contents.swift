import UIKit
/*:
# Playground - Actividad 5
* Class y Struct
* Extension
* Optional
*/


/*: 
### Actividad Class y Struct
A) Diseñar la clase Persona que contenga dos metodos, el primero "Saludar" que reciba el parámetro nombre y regrese el mensaje el nombre mas el texto "mucho gusto", el segundo metodo "Caminar" que reciba como parámetro un tipo de dato Int y regrese un tipo de dato String indicando el numero de pasos caminados.
*/

class Persona{
    func Saludar(nombre:String) -> String {
        return "Hola " + nombre + " mucho gusto";
    }

    func Caminar(pasos:Int) -> String {
        return "He caminado " + String(pasos) + " pasos...";
    }
}

var yo = Persona();

print("--Clase Persona")
print(yo.Saludar(nombre:"Abraham"));
print(yo.Caminar(pasos:20));

//: B) Diseñar el struct "Pantalla" la cual recibirá como como parametros el ancho y alto de una pantalla como tipo de datos Int con un constructor, para inicializar la estructura.

struct Pantalla{
    var width:Int;
    var height:Int;

    init(width:Int, height:Int){
        self.width=width;
        self.height=height;
    }

    func getDimentions() -> String {
        return "Width: " + String(width) + " - Height: " + String(height);
    }
}

var sony = Pantalla(width:1920,height:1080);

print("--Struct Pantalla");
print(sony.getDimentions());

/*:
### Extensions
A) Diseñar un extensión del tipo de dato Int que represente las horas y que pueda regresar los segundos correspondientes (puedes utilizar una función o una variable computada)
*/

extension Int {
    var horas:Int {
        return self*60*60;
    }
}

print("--Extension Int");
print(1.horas);

//: B) Diseñar una extensión del tipo de dato String que represente un día de la semana y regrese el numero correspondiente iniciando con Domingo = 1 y finalizando Sábado = 7

extension String {
    func dia() -> Int{
        switch self.uppercased(){
         case "LUNES":
                return 1;
         case "MARTES":
                return 2;
         case "MIERCOLES":
                return 3;
         case "JUEVES":
                return 4;
         case "VIERNES":
                return 5;
         case "SABADO":
                return 6;
         case "DOMINGO":
                return 7;
         default:
                return 0;
        }        
    }
}

print("--Extension String");
var dia = "Lunes";
print(dia.dia());

/*:
### Optionals
A) Diseñar una variable optional para recibir el tipo de dato Int en caso de que exista.
*/

var number:Int?;

//: B) Para la colección let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200] diseñar una variable opcional para recibir el valor de dias["DF"]

print("--Uso de optional");

let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200];
var day:Int?;

day=dias["DF"];
print(day);

if let temp = dias["DF"]
{
    print("Existe");
}else{
    print("No existe");
}