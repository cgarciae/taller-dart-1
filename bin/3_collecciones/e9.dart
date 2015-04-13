import 'dart:math';
import 'dart:collection';
import 'dart:convert';

/**
 * Pero en general este tipo de transformaciones las podemos hacer con
 * los metodos [map], [expand], [where] (filter), [fold y reduce].
 */

main (){
    print ('\n');
    var s = "Algunas palabras sin mucho sentido para el demo";
    print (s);
    
    var l = s.split(" ");
    print (l);
    
    var it1 = l.where((s) => ! s.contains("o"));
    print (it1);
    
    var it2 = it1.map((s) => s.length);
    print (it2);
    
    var it3 = it2.expand((n) => [n, n-1, n-2]);
    print (it3);
    
    var valorInicial = 10;
    var total = it3.fold (valorInicial, (n, acum) => n + acum);
    print (total);
    
}