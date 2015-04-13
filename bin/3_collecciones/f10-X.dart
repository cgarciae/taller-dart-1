import 'dart:math';
import 'dart:collection';
import 'dart:convert';
import 'package:unittest/unittest.dart';

/**
 * Calcular la longitud de la palabra mas larga en la cadena [s] que contiene 
 * las letras [a] y [g].
 */

int longPalabraMasLarga (String s)
{
    throw new UnimplementedError();
}

main (){
    var s = "Dart (originalmente llamado Dash) es un lenguaje de programación de código abierto, desarrollado por Google. Fue revelado en la conferencia goto; en Aarhus, Dinamarca el 10 octubre de 2011.1 El objetivo de Dart no es reemplazar JavaScript como el principal lenguaje de programación web en los navegadores web, sino ofrecer una alternativa más moderna. El espíritu del lenguaje puede verse reflejado en las declaraciones de Lars Bak, ingeniero de software de Google, que define a Dart como un “lenguaje estructurado pero flexible para programación Web”.";
    
    test ("palabra mas larga", (){
        expect(longPalabraMasLarga(s), 14);
    });
}