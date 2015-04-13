import 'package:unittest/unittest.dart' as ut;
/**
 * Metodos y propiedades en Dart
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

main ()
{
    var p1 = new Personaje(50)
        ..vida = 100;
    
    var p2 = new Personaje(50)
        ..vida = 1000;
    
    var p3 = new Personaje(50)
        ..vida = 40;
    
    ut.test ("atacar", (){
        
        p1..atacar (p2)..atacar(p3);
        
        ut.expect (p2.vivo, true);
        ut.expect (p3.vivo, false);
        
        p1.matar(p2);
        
        ut.expect (p2.vivo, false);
    });
    
}