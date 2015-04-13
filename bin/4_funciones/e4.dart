/**
 * Que pasa si queremos dividir por 2?
 */
num suma (List<int> list, [int valorInicial = 50, bool dividirPor2 = false])
{   
    var total = valorInicial +  list.reduce((a, b) => a + b);
    
    return dividirPor2 ? total/2 : total;
}

main()
{
    var list = new Iterable.generate(10).toList();
    print (suma(list, 50, true)); //Nos toca llenar el primer parametro opcional
}