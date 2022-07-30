// import 'package:dart_application_example/dart_application_example.dart' as dart_application_example;

void main(List<String> arguments) {

  int temp_cent=27;

  /*Conversión a grados Farenheit*/
  double temp_far= (((9/5)*temp_cent)+32);

    /*Lista de estaciones*/
  List<String> ciudades =["Plateada", "Celeste", "Carmín", "Azulona"];
  List<String> ciudades_restantes=[];

  //Selecciono la primera estación
  int index_ciudad_actual = 0;
  String nombre_estacion=ciudades[index_ciudad_actual];

  //Elimino la estación actual de las demás
  if(ciudades.contains(nombre_estacion)==true)
  {
    ciudades.remove(nombre_estacion);
    ciudades_restantes=ciudades;
  }

  /*Parto to upper*/
  nombre_estacion= nombre_estacion.toUpperCase();

  /*Impresión por consola*/
  print("Buenos días, trabajadores de TRENES CIUDAD $nombre_estacion!!!\n");
  print("El día de hoy la temperatura es de $temp_cent grados");
  print("centígrados u $temp_far grados Farenheit.");
  print("El tren se detendrá en las siguientes ciudades: $ciudades_restantes");

}
