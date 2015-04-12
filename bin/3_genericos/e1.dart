import 'dart:math';

/*
 * List es un tipo generico, cuando no se declara el tipo interno, se define
 * como List<dynamic>
 */
suma (List lista)
{
    var resultado;
    for (var elem in lista)
    {
        if (resultado == null)
        {
            resultado = elem;
        }
        else
        {
            resultado += elem;
        }
    }
    return resultado;
}

main (){
    print (suma([1, 2, 3]));
    print (suma(["Hola", " ", "Mundo"]));
}