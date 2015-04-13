/**
 * Imaginemos que tenemos esta funcion que suma todos los numero de una lista,
 * list suma un valor inicial dado y depronto lo divide por 2.
 */
num suma (List<int> list, int valorInicial, bool dividirPor2)
{
    var total = valorInicial +  list.reduce((a, b) => a + b);
    
    return dividirPor2 ? total/2 : total;
}

main()
{
    var list = new Iterable.generate(10).toList();
    print (suma(list, 50, false));
}