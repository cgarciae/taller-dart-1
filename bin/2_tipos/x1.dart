import 'dart:math' as math;
import 'package:unittest/unittest.dart' as ut;
/**
* Implementar una funcion la funcion [num hipotenusa (int a, int b)] utilizando
 * math.sqrt;
 */
num hipotenusa (int a, int b) => throw new UnimplementedError();

main () {
    ut.test("hipotenusa", () {
        ut.expect (hipotenusa (3, 4), 5);
    });
}