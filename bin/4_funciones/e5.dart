/**
 * Si queremos evitar esto podemos utilizar parametros nombrados, cambiamos
 * [] por {} y "=" por ":". Ahora podemos llamar (o no) esto parametros por 
 * nombre en cualquier orden.
 */
num suma (List<int> list, {int valorInicial : 50, bool dividirPor2 : false})
{   
    var total = valorInicial +  list.reduce((a, b) => a + b);
    
    return dividirPor2 ? total/2 : total;
}

main()
{
    var list = new Iterable.generate(10).toList();
    print (suma(list, dividirPor2: true)); //Nos toca llenar el primer parametro opcional
}