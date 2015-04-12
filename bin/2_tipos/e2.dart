/**
 * "dynamic" de hecho es un tipo como podemos ver en la declaracion del tipo
 * del parametro "b" en suma
 */
dynamic suma (dynamic a, b) => a + b;

main ()
{
    var resp = suma (1, 2);
    print (resp);

    resp = suma ("Hola ", "Mundo");
    print (resp);
}

