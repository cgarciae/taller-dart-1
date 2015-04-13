/**
 * Creemos un constructor
 */
class Personaje {
    String nombre;
    num vida;
    
    Personaje (String nombre, num vida)
    {
        this.nombre = nombre;
        this.vida = vida;
    }
}

main ()
{
    var p = new Personaje("Cristian", 10000);
    
    print (p.nombre);
    print (p.vida);
}