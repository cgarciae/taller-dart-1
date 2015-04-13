import 'dart:math';

/**
 * Se puede usar la sintaxis "on Type catch" para solo atrapar ciertos errores,
 * o realizar diferentes acciones dependiendo del tipo de error.
 */
class MiClase
{
    toString () => "ERROR!!!!!!!!!!";
}

class MiOtraClase
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