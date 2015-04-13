/**
 * Pero casi nunca no dividimos por 2 y el valor inicial suele ser 50. Podemos
 * utilizar parametros opcionales
 */
num suma (List<int> list, [int valorInicial, bool dividirPor2])
{
    if (valorInicial == null)
        valorInicial = 50;
    
    if (dividirPor2 == null)
        dividirPor2 = false;
    
    var total = valorInicial +  list.reduce((a, b) => a + b);
    
    return dividirPor2 ? total/2 : total;
}

main()
{
    var list = new Iterable.generate(10).toList();
    print (suma(list));
}