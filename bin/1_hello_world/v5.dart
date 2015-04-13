/**
 * Si no queremos que la variable cambie podemos anotarla con [final]. Final
 * ayuda tambien aparecera luego en los constructores de clases. Por otro lado,
 * [const] solo se le pueden asignar literales u otros valores constantes.
 */

main() {
  var hola = "Hola Mundo";
  final mundo = hola;
  //const c = hola;
  const c = "Hola Mundo";

  print(hola);
  print(mundo);
  print(c);

  hola = "Chao";
  mundo = "Chao";
  c = "Chao";
}
