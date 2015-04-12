import 'dart:math';

/*
 * Con tipos no saca warning pero falla al ejecutar
 */
add (int a, int b) => a + b;
suma (List<int> lista) => lista.reduce (add);

main (){
    print (suma([1, 2, 3]));
    print (suma(["Hola", " ", "Mundo"]));
}