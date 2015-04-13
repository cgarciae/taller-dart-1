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
    
    final num ataque;
    
    //Despues entre () y {} se puede asignar variables, estos se hace antes que
    //el objeto se construya y es necesario para asignar campos/variables
    //anotadas con [final]. Aqui tambien se puede llamar a [super].
    Personaje.Cristian (this.vida) : ataque = 1000
    {
        nombre = "Cristian";
    }
    
}

main ()
{
    var cristian = new Personaje.Cristian(10000);
    print (cristian.nombre);
}