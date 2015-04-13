/**
 * Cuando el editor no es capaz de reconocer el tipo es mejor ayudarle anotandolo.
 * Tambien podemos hacer esto si queremos que la variable no cambie su tipo, esto
 * generalmente es una buena practica y ayuda a las VM a optimizar la ejecucion
 * del codigo.
 */
h () => "Hola";
m () => "Mundo";
main (){
    var hola = h();
    print (hola);
    hola = 1;
    
    String mundo = m ();
    print (mundo);
    mundo = 1;
}