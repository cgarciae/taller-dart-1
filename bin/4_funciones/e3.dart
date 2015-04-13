/**
 * Sin embargo, mas facil ponemos valores definidos
 */
num suma (List<int> list, [int valorInicial = 50, bool dividirPor2 = false])
{   
    var total = valorInicial +  list.reduce((a, b) => a + b);
    
    return dividirPor2 ? total/2 : total;
}

main()
{
    var list = new Iterable.generate(10).toList();
    print (suma(list));
}