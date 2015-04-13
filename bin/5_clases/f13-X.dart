import 'package:unittest/unittest.dart' as ut;
/**
 * Implementar el constructor de fabrica tal que si la fuerza es menor a 100
 * instancia un [Aldeano], si es menor a 500 instancia un [Clerigo], y si es
 * mayor a 500 instancia un [Heroe].
 */
abstract class Personaje {
    
    num fuerza;
    
    factory Personaje (num fuerza)
    {
        throw new UnimplementedError();
    }
    
}

class Clerigo implements Personaje
{
    num fuerza;
    
    Clerigo (this.fuerza);
}

class Heroe implements Personaje
{
    num fuerza;
    
    Heroe (this.fuerza);
}

class Aldeano implements Personaje
{
    num fuerza;
    
    Aldeano (this.fuerza);
}

main ()
{
    ut.group("factory", (){
        var p1 = new Personaje(50);
        ut.expect(p1 is Aldeano, true);
        
        var p2 = new Personaje(200);
        ut.expect(p2 is Clerigo, true);
        
        var p3 = new Personaje(600);
        ut.expect(p3 is Heroe, true);
    });
}