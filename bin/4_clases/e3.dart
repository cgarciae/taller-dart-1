/**
 * El constructor se puede abreviar si solo vamos a asignar valores
 */
class Personaje {
    String nombre;
    num vida;
    
    Personaje (this.nombre, this.vida);
}

main ()
{
    var p = new Personaje("Cristian", 10000);
    
    print (p.nombre);
    print (p.vida);
}