import 'dart:math';

/**
 * Naturalmente hay tipos comunes de Excepciones y Errores de los cuales se 
 * puede heredar para ser mas consistente. El tipo [Error] es para errores reales,
 * por ejemplo que una funcion devolvio 3 pero debia ser 4, el codigo esta malo.
 * En general no se deben atrapar los errores, hay que corregir el codigo.
 * El tipo [Exception] es para cuando ocurrio algo inesperado, por ejemplo que
 * un valor resulto null, tal vez porque al usuario se le olvido un input o llego
 * informacion incompleta: el codigo esta bueno, pero no puede continuar por 
 * razones "excepcionales".
 */
class MiClase implements Exception
{
    toString () => "ERROR!!!!!!!!!!";
}

class MiOtraClase implements Exception
{
    toString () => "Error discreto";
}

main ()
{
    String resp;
    try
    {
        if (new Random().nextDouble() > 0.5)
            throw new MiClase();
        else
            throw new MiOtraClase();
    }
    on MiClase catch (error)
    {
        resp = "Error fatal de ASEMBLER!: $error";
    }
    on MiOtraClase catch (error)
    {
        resp = "Todo esta bien: $error"; 
    }
    
    print (resp);
}