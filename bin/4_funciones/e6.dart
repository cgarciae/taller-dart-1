/**
 * La notacion [fun (x) => f(x)] se llama notacion lamda y es una
 * abreviatura para [fun (x) { return f(x); }]. Par permite crear literales
 * de funcion con notacion lamda y notacion normal. Las funciones en Dart
 * son objeto, puden ser pasadas como parametros y son de tipo [Function].
 */

List<int> positivoNegativo (int n, Function f)
{
    return [f (n), f (-n)];
}

main()
{
    var f = (n) => n * n;
    var g = (n) {
        var x = 2 * n - 1;
        return x * x;
    };
    
    print (positivoNegativo(5, f));
    print (positivoNegativo(5, g));
}