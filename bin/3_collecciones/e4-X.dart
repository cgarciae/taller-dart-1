import 'package:unittest/unittest.dart' as ut;
/**
 * Calcular la longitud de cada String (con la propiedad string.length) de cada
 * elemento de la lista [list] y devolverlas en una lista
 */
List<int> longitudes (List<String> list)
{
    throw new UnimplementedError();
}

main ()
{
    ut.test("longitudes", (){
        ut.expect (longitudes(["Hola", " ", "Mundo"]), [4, 1, 5]);
    });
}