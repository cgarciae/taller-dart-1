import 'dart:math';

/**
 * Taxonomia: [Iterable] > [Collection]. Hay varios tipos de Colleciones: 
 * [List], [Queue], [Set].
 * Iterable realmente es un tipo generico y su definicion completa es Iterable<T>.
 * Iterable define la propiedad [Iterator get iterator] la cual define el metodo
 * [bool moveNext()] y la propiedad [T current].
 * 
 * Todo iterable puede usarse en un [for] loop.
 */

main (){
    var list = new List<int> ()..add(1)..add(2)..add(3);
    //list = [1, 2, 3];
    
    for (var n in list)
    {
        print (n);
    }
    
    //List permite acceso con []
    print (list[1]);
}