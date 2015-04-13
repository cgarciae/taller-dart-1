/**
 * Para esto podemos crear un tipo con [typedef] y definir la funciones de
 * esta manera. Sin embargo, se pierde la capacidad de reasignar la funcion.
 */

typedef int int2int (int);

List<int> positivoNegativo (int n, int2int f)
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