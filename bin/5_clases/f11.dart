import 'package:unittest/unittest.dart' as ut;
/**
 * En Dart cualquier clase es una inteface donde los campos se interpretan como
 * propiedades con get/set. Implementar la inteface es sobreescribir todos los
 * metodos y propiedades.
 */
abstract class Personaje {
    String nombre;
    num vida;
    
    actacar (Personaje p);
}

class Clerigo implements Personaje
{
    String get nombre => "Clerigo";
    void set nombre(String _nombre){}
    
    num vida;
  
    actacar (Personaje p) {
        //Clerigo no ataca
    }
}

main ()
{
    Personaje p = new Clerigo()
        ..vida = 200;
    
    print (p.vida);
    print (p.nombre);
    print (p is Personaje);
    
    var p2 = new Personaje();
}