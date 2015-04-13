/**
 * En Dart cualquier objeto puede ser lanzado como una excepcion
 */
class MiClase
{
    toString () => "ERROR!!!!!!!!!!";
}

main ()
{
    throw new MiClase();
}