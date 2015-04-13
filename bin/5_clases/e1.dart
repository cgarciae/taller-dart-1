/**
 * La definicion de clases en Dart es casi identica a C#
 */
class Personaje {
    String nombre;
    num vida;
}

main ()
{
    var p = new Personaje();
    p.nombre = "Cristian";
    p.vida = 10000;
    
    print (p.nombre);
    print (p.vida);
}