/**
 * Sin embargo, podemos simplemente usar esta notacion para no tener que crear
 * un tipo para cada clase de funciones.
 */

List<int> positivoNegativo (int n, int f (int))
{
    return [f (n), f (-n)];
}

main()
{
    f (n) => n * n;
    g (n) {
        var x = 2 * n - 1;
        return x * x;
    };
    String h (n) => "hola";
    
    print (positivoNegativo(5, f));
    print (positivoNegativo(5, g));
    print (positivoNegativo(5, h));//Funciona
}