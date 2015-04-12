import 'dart:math';

/*
 * Implementado con programacion funcional (que no cunda el panico!).
 */
add (a, b) => a + b;
suma (List lista) => lista.reduce (add);

main (){
    print (suma([1, 2, 3]));
    print (suma(["Hola", " ", "Mundo"]));
}