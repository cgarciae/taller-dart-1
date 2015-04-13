import 'package:unittest/unittest.dart' as ut;
/**
 * Sin embargo, Dart permite utilizar el [factory] constructor para pretender
 * que estamos instanciando una clase abstracta cuando enrealidad estamos pasando
 * una implementacion o extension de esta.
 */
abstract class Personaje {
    String nombre;
    num vida;
    
    factory Personaje ([bool ataca = true])
    {
        if (ataca)
            return new Hereo();
        else
            return new Clerigo();
    }
    
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

class Hereo implements Personaje
{
    num get vida => 1000;
    set vida (_){}

    String nombre = "Heroe";

    actacar(Personaje p) {
        p.vida -= 50;
    }
}

main ()
{
    Personaje p = new Personaje()
        ..vida = 200;
    
    print (p.vida);
    print (p.nombre);
    
    print ('\n');
    
    p = new Personaje(false)
            ..vida = 200;
        
    print (p.vida);
    print (p.nombre);
}