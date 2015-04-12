
/**
 * Cuando no se especifican los tipos, Dart basicamente se comporta como
 * un lenguaje dinamico al estilo JavaScript, Lisp, Smalltalk, etc.
 */
suma (a, b) => a + b;

/**
 * En Java o C# si se quiere declarar una estructura o comportamient comun toca
 * implementar interfaces. Sin embargo, a aveces se tienen estructuras como 
 * "persona.nombre" y "edicicio.nombre", las cuales seguramente no implementan
 * la interface "Nombrable", ya sea porque es una clase de una libreria, entonces
 * se vuelve muy duro reutilizar codigo. En Dart sin embargo, cuando se necesita
 * cierta flexibilidad para utilizar comportamiento/estructuras comunes se usan
 * los tipos dinamicos
 */
main ()
{
    
    var resp = suma (1, 2);
    print (resp);

    resp = suma ("Hola ", "Mundo");
    print (resp);
}

