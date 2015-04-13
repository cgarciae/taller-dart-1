import 'dart:math';
import 'dart:collection';
import 'dart:convert';

/**
 * O en general devoler un iterable de un tipo diferente, en este caso
 * List<int> se convierte en List<String>.
 */

main (){
    var l = "Algunas palabras sin mucho sentido para el demo".split(" ");
    var it = new Iterable.generate(5, (n) => l[n]);
    
    for (var n in it)
        print (n);
    
}