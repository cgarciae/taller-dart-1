/**
 * A veces el constructor no es necesario porque tenemos [notacion cascada]
 * para realizar operaciones sobre el objecto, util para asignar valores o
 * realizar operaciones en cadena y al final devolver el objeto original.
 */
class Personaje {
    String nombre;
    num vida;
}

main ()
{
    var p = new Personaje()
        ..nombre = "Cristian"
        ..vida = 0;
    
    p..vida += 100..vida -= 10;
    
    print (p.nombre);
    print (p.vida);
}