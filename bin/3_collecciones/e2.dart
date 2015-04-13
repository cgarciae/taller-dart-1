import 'dart:math';
import 'dart:collection';

/**
 * -  [List] permite acceso por indice con [] y tiene constructor literal
 * -  [Queue] permite adicion rapida al principio y al final con 
 * [addFirst/removeFirst] y [addLast/removeLast]. Generaliza la estructura de 
 * Queue y Stack al mismo tiempo.
 * -  [Set] garanitiza que no existan objectos duplicado pero sus elementos no 
 * tienen orden.
 */

main (){
    var q = new Queue<int>()..add(2)..addFirst(1)..addLast(3);
    
    for (var n in q)
    {
        print (n);
    }
}