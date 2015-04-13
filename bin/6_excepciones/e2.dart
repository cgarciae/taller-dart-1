/**
 * Las excepciones pueden ser atrapadas con la sintaxis usual de try/catch
 */
class MiClase
{
    toString () => "ERROR!!!!!!!!!!";
}

main ()
{
    try
    {
        throw new MiClase();
    }
    catch (error, stack)
    {
        print ("$error: \n$stack");
    }
}