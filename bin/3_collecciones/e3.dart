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
    var s = new Set<int>()..add(1)..add(1)..add(1);
    
    for (var n in s)
    {
        print (n);
    }
}