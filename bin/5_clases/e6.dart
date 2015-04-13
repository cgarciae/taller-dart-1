import 'package:unittest/unittest.dart' as ut;
/**
 * En Dart los campos realmente son getters y setters triviales de una variable 
 * oculta. De esta manera, tambien se pueden sobre un campo de la clase padre
 * creando un getter y un setter con ese nombre. Esto hace que las cambia el
 * comportamiento de cierto objeto sea facil y a veces evita que "rompamos" nuestro
 * codigo.
 */
class Personaje {
    String nombre;
    num vida;
    
    final num ataque;
    
    Personaje (this.ataque);
    
    //Una propiedad con get y set
    bool get vivo => vida > 0;
    set vivo (bool value) {
        if (! value)
            vida = 0;
    }
    
    //Un metodo
    atacar (Personaje otro) => otro.vida -= ataque;
    
    matar (Personaje otro) => otro.vivo = false;
}

class Inmortal extends Personaje
{
    num get vida => 100000000;
    set vida (num _) {}
    
    Inmortal (num ataque) : super (ataque);
    
    atacar (Personaje otro) => matar (otro);
}

main ()
{
    var p1 = new Personaje(50)
        ..vida = 100;
    
    var p2 = new Inmortal(50);
    
    var p3 = new Personaje(50)
        ..vida = 40;
    
    ut.test ("atacar", (){
        p1..atacar (p2)..atacar(p3);
        
        //p1 mata a p3 en su primer ataque
        ut.expect (p2.vivo, true);
        ut.expect (p3.vivo, false);
        
        //p1 no puede matar a p3 porque es inmortal
        p1.matar(p2);
        ut.expect (p2.vivo, true);
        
        //p1 muere porque Inmortal siempre mata
        p2.atacar(p1);
        ut.expect (p1.vivo, false);
        
        //p2 no se puede suicidar!!
        p2.matar(p2);
        ut.expect (p2.vivo, true);
    });
    
}