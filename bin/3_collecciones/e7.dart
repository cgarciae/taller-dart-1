import 'dart:math';
import 'dart:collection';
import 'dart:convert';

/**
 * Sin embargo, podemos pasar una funcion para modificar los valores
 */

main (){
    
    var it = new Iterable.generate(5, (n) => 2*n);
    
    for (var n in it)
        print (n);
    
}