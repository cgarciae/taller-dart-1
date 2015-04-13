/**
 * Pero que pasa si solo queremos que nos pasen cierto tipo de funciones?
 */

List<int> positivoNegativo (int n, Function f)
{
    return [f (n), f (-n)];
}

main()
{
    var f = (n) => n * n;
    var g = (n) {
        var x = 2 * n - 1;
        return x * x;
    };
    var h  = (n) => "hola";
    
    print (positivoNegativo(5, f));
    print (positivoNegativo(5, g));
    print (positivoNegativo(5, h));//Funcion no grata pero funciona
}