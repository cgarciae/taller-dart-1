import 'package:unittest/unittest.dart' as ut;
/**
 * Implementar el personaje Vampiro que suma a su vida lo que le resta al
 * personaje que ataca
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

class Vampiro extends Personaje
{
    Vampiro (num ataque) : super (ataque);
}

main ()
{
    var p1 = new Vampiro(50)
        ..vida = 200;
    
    var p2 = new Vampiro(50)
        ..vida = 100;
    
    ut.test ("atacar", ()
    {
        p1.atacar (p2);
        
        //p1 mata a p3 en su primer ataque
        ut.expect (p1.vida, 150);
        ut.expect (p2.vida, 150);
    });
    
}