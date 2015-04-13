import 'dart:math';
import 'dart:collection';
import 'dart:convert';

/**
 * Dart trae una manera de crear rango facilment (tal vez no con la mejor
 * sintaxis) con [Iterable.generate].
 */

main (){

    for (var n in new Iterable.generate(5))
        print (n);
    
}