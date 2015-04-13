/**
 * Al declarar tipos concretos ahora el script lanza una excepcion debido
 * al intento de usar String como parametro, esto se puede evitar si vamos a
 * [Manage Launches] y quitamos [Checked Mode]. Por costumbre es mejor utilizar
 * [Checked Mode] ya que ayuda a capturar errores.
 */
num suma (int a, num b) => a + b;

main ()
{
    var resp = suma (1, 2);
    print (resp);

    resp = suma ("Hola ", "Mundo");
    print (resp);
}
