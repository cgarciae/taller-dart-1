import 'dart:math';
import 'dart:collection';
import 'dart:convert';

/**
 * [Map] es un generico "doble": [Map<T,S>]. Como en muchos lenguages permite
 * acceder a valores [values] data una llave [key], e utiliza la sytaxis de
 * acceso y asignacion map[key] = value.
 * Cuenta con el constructor literal {key1: value1, key2: value2}. Entre otras
 * cosas es utilizado para mapear desde y hacia JSON.
 */

main (){
    var map = {"nombre": "Cristian", "apellido": "Garcia", "edad": 26};
    
    map["cuidad"] = "Medellin";
    
    print (map["edad"]);
    print (map);
    print (JSON.encode(map));
}