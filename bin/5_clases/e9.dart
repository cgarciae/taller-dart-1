import 'package:unittest/unittest.dart' as ut;
/**
 * Como Dart realmente no depende de los tipos de las funciones/constructores,
 * estos no se pueden sobrecargar. Para tener mas de 1 constructor Dart tiene
 * constructores nombrados. En este ejemplo hay un constructor de Personaje
 * que se llama Cristian. 
 */
class Personaje {
    String nombre;
    num vida;
    
    operator + (Personaje otro)
    {
        return new Personaje()
            ..nombre = nombre
            ..vida = vida + otro.vida;
    }
}

main ()
{
    var p1 = new Personaje()
        ..vida = 50;
    
    var p2 = new Personaje()
        ..vida = 100;
    
    Personaje p3 = p1 + p2;
    
    ut.test ("Overload", (){
        ut.expect (p3.vida, 150);
    });
}