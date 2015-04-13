import 'package:unittest/unittest.dart' as ut;
/**
 * Al igual que C# y Java, Dart tiene clases abstractas las cuales no pueden
 * ser instanceadas.
 */
abstract class Personaje {
    String nombre;
    num vida;
}

class Heroe extends Personaje
{
    num get vida => 100;
}

main ()
{
    Personaje p = new Heroe()
        ..vida = 200;
    
    print (p.vida);
    
    var p2 = new Personaje();
}