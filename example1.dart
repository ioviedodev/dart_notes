
//Reto colecciones
// void main() {
//   Set restaurantes = {
//     {
//       "nombre": "El novillo alegre",
//       "tipo": "Argentina",
//       "calificaciones": [4, 5, 2, 1, 2]
//     },
//     {
//       "nombre": "Baires Grill",
//       "tipo": "Argentina",
//       "calificaciones": [3, 1, 3, 5, 5, 2, 3]
//     },
//     {
//       "nombre": "Mario Brothers",
//       "tipo": "Italiana",
//       "calificaciones": [4, 3, 2, 1, 1]
//     },
//     {
//       "nombre": "Molto bene",
//       "tipo": "Italiana",
//       "calificaciones": [4, 3, 1, 1, 5]
//     }
//   };

//   Map<String, dynamic> rating = {};

//   int index = 0;
//   String tipoValue = "";
//   List<int> calificaciones = [];
//   int nbrCalificaciones = 0;
//   int sumaCalificaciones = 0;
//   int sumaCalificacionesTodos = 0;
//   int nbrCalificacionesTodos = 0;
//   String map_value = "";
//   List<String> map_list_value = [];
//   double promedio = 0;

//   // Recorro el Set de restaurantes
//   for (index = 0; index < restaurantes.length; index++) {
//     //Limpio variables
//     nbrCalificaciones = 0;
//     sumaCalificaciones = 0;
//     calificaciones = [];

//     //Obtengo valores del Set
//     tipoValue = restaurantes.elementAt(index)["tipo"].toString();
//     calificaciones = restaurantes.elementAt(index)["calificaciones"];
//     nbrCalificaciones = calificaciones.length;
//     sumaCalificaciones = calificaciones.reduce((a, b) => a + b);

//     //Busco si ya existe la llave en el mapa
//     if (!rating.containsKey(tipoValue)) {
//       //Hay que crear la llave
//       //Los pongo como un formato de "conteoTipo,nbrCalificaciones,sumaCalificaciones" separados por ","
//       rating.addAll({tipoValue: "$nbrCalificaciones,$sumaCalificaciones"});
//     } else {
//       //Llave ya está creada
//       map_value = rating[tipoValue];
//       //Obtengo el patrón
//       map_list_value = map_value.split(",");
//       //Obtengo los valores individuales para sumar
//       nbrCalificaciones += int.parse(map_list_value[0]);
//       sumaCalificaciones += int.parse(map_list_value[1]);

//       //Actualizo el valore del mapa con los nuevos valores que fueron sumados
//       rating.update(
//           tipoValue, (value) => "$nbrCalificaciones,$sumaCalificaciones");
//     }
//   } //termino la iteración del SET

//   //Elimino el formato para dejar llave,valor (promedio) en base a los datos procesados
//   for (var key in rating.keys) {
//     map_value = rating[key];
//     map_list_value = map_value.split(",");
//     nbrCalificaciones = int.parse(map_list_value[0]);
//     sumaCalificaciones = int.parse(map_list_value[1]);

//     //Obtengo el promedio
//     promedio = (sumaCalificaciones / (nbrCalificaciones));

//     //obtengo los datos del tipo "todos"
//     sumaCalificacionesTodos += sumaCalificaciones;
//     nbrCalificacionesTodos += nbrCalificaciones;

//     //Actualizo en el valor del mapa
//     rating.update(key, (value) => "$promedio");
//   }

//   //Obtengo el promedio del tipo "todos"
//   promedio = sumaCalificacionesTodos / nbrCalificacionesTodos;

//   //Agrego el tipo "todos", al promedio lo redondeo a dos decimales
//   rating.addAll({"todos": "${promedio.toStringAsFixed(2)}"});
//   print(rating);
// }

//   if(restaurante["estrellas"]==null)
//   {
//     print("El restaurante no tiene estrellas");
//   }
//   else
//   {
//     List<int> estrellas = restaurante["estrellas"];
//     int suma= 0;
//     double promedio=0;
//     for (int index=0; index< estrellas.length; index++)
//     {
//       suma+=estrellas[index];
//     }

//     promedio=suma/estrellas.length;
//     restaurante.addAll({"promedio":promedio});
//   }

//for dentro de una Lista
// void main() {

//   List <String> coloresPrimarios=[
//     "rojo",
//     "amarillo",
//     "azul"
//   ];

//   List <String> colores=[
//     "morado",
//     "verde",
//     for(int index=0; index<coloresPrimarios.length; index++)
//       coloresPrimarios[index]
//   ];

//   print(coloresPrimarios);
//   print(colores);
// }

// if dentro de una colección
// void main() {

//   bool agregarAmarillo=true;
//   List <String> colores=[
//     "rojo",
//     "verde",
//     if(agregarAmarillo) "amarillo"
//   ];

//   print(colores);
// }

// //Union de listas
// void main() {

//   List <String> colores=[];
//   List <String> coloresPrimarios=
//   [
//     "rojo",
//     "amarillo",
//     "azul"
//   ];

//   List <String> coloresSecundarios=
//   [
//     "morado",
//     "verde",
//     "naranja",
//     ...coloresPrimarios
//   ];

//   colores.addAll(coloresPrimarios);
//   colores.addAll(coloresSecundarios);

//   print(colores);

//   print(coloresSecundarios);
// }

// Trabajo con mapas
// void main() {

//   Map <String,dynamic> restaurante=
//   {
//     "nombre": "Pollos del monte",
//     "estrellas":   [5,4,3,4,2]
//   };

//   if(restaurante["estrellas"]==null)
//   {
//     print("El restaurante no tiene estrellas");
//   }
//   else
//   {
//     List<int> estrellas = restaurante["estrellas"];
//     int suma= 0;
//     double promedio=0;
//     for (int index=0; index< estrellas.length; index++)
//     {
//       suma+=estrellas[index];
//     }

//     promedio=suma/estrellas.length;
//     restaurante.addAll({"promedio":promedio});
//   }

//   print(restaurante);

// }

// Mapas
// void main() {

//   Map <String,dynamic> persona =
//   {
//     "nombre": "Ana",
//     "edad":   12,
//     "pais":   "Ecuador",
//     "altura": 1.70
//   };

//   print("Keys:    ${persona.keys}");
//   print("Values:  ${persona.values}");

//   print(persona["nombre"]);
//   if(persona["pais"]==null)
//     print("La persona no tiene pais");
//   else
//     print("La persona tiene pais");

//   persona["nombre"]= "Daniel";

//   persona.update("pais", (value) => "España");
//   print(persona);

// }

// Colección tipo Set

// void main() {

//   Set<String> paises={};

//   paises={ "Argentina" , "Ecuador", "Colombia"};
//   print(paises);
//   paises.add("Mexico");
//   print(paises);

//   for(int index=0; index<paises.length; index++)
//   {
//     print(paises.elementAt(index));
//   }
// }

//Coleción: Listas
// void main() {

//   List<String> amigos=[];

//   amigos=["Denisse", "Lizbeth", "Marcela","Lizbeth"];

//   amigos.insert(1,"Estefania");

//   amigos=amigos.reversed.toList();
// //   amigos.addAll(amigos.reversed.toList()) ;

//   amigos.remove("Lizbeth");

//   for (int index=0; index<amigos.length; index++)
//   {
//     print(" amigos[$index]: ${amigos[index]}");
//   }
// }

// void main() {

//   int               valor1=5;
//   int               valor2=10;
//   Operacion         oper_solicitada= Operacion.PRODUCTO;
//   dynamic           resultado=0;
//   List<int>         valores = [3,2,1,4];

//   int               index=0;

//   print("Bievenido a la Calculadora DARTcico!! ¡Hoy es tu día de suerte!");
//   print("oper_solicitada: $oper_solicitada");

//   switch(oper_solicitada)
//   {
//     case Operacion.SUMA:
//       resultado= valor1+ valor2;
//       print("$resultado= $valor1 + $valor2");
//       break;
//     case Operacion.RESTA:
//       resultado= valor1- valor2;
//       print("$resultado= $valor1 - $valor2");
//       if(resultado<0)
//         print("NEGATIVO");
//       break;
//     case Operacion.MULTIPLICACION:
//       resultado= valor1 * valor2;
//       print("$resultado= $valor1 * $valor2");
//       break;
//     case Operacion.MODULO:
//       resultado= valor1 % valor2;
//       print("$resultado = $valor1 % $valor2");
//       break;
//     case Operacion.FACTORIAL:
//       resultado=1;
//       for(index=valor1; index!=0 ; index--)
//       {
//               resultado*=index;
//       }
//       print("$valor1! = $resultado ");
//       break;
//     case Operacion.SUMATORIA:
//       for(index=0; index<valores.length; index++)
//       {
//         resultado += valores.elementAt(index);
//       }
//       print("Σ$valor1 = $resultado");
//       break;
//     case Operacion.PRODUCTO:
//       resultado=1;
//       for(index=0; index<valores.length; index++)
//       {
//         resultado *= valores.elementAt(index);
//       }
//       print("PROD $valor1 = $resultado");
//       break;
//     default:
//       print("Operación inválida");
//       break;
//   }
// }

// enum Operacion
// {
//   SUMA,
//   RESTA,
//   MULTIPLICACION,
//   MODULO,
//   FACTORIAL,
//   SUMATORIA,
//   PRODUCTO
// }

// void main() {

//   Tiempo tiempo_actual = Tiempo.soleado;

//   print("$tiempo_actual");

//   switch(tiempo_actual)
//   {
//     case Tiempo.despejado:
//       print("despejado");
//       break;
//     case Tiempo.lluvioso:
//       print("lluvioso");
//       break;
//     case Tiempo.soleado:
//       print("soleado");
//       break;
//   }

// }

// enum Tiempo
// {
//   soleado,
//   lluvioso,
//   despejado
// }

//   // ciclo for
//   int tazas_cafe=0;
//   const int maximo=3;

//   for (int index=0; index < maximo; index++)
//   {
//     ++tazas_cafe;
//     print("iteración: $index");
//     print("tazas_cafe: $tazas_cafe");

//   }

//   //Do While
//   int tazas_cafe=0;
//   const int maximo=0;

//   do
//   {
//     tazas_cafe++;
//     print("cantidad de tazas de cafe: $tazas_cafe");
//   }
//   while(tazas_cafe<maximo);

//   // Mascotas

//   int mascotas = 0;

// //   if (mascotas==0)
// //     print("No tienes mascotas");

// //   else if (mascotas<3)
// //     print("Si tienes mascotas, pero menos de tres");
// //   else
// //     print("Si tienes mascotas, y más de 3");

//   switch(mascotas)
//   {
//     case 0:
//       print("No tienes mascotas");
//       break;
//     case 1:
//     case 2:
//       print("Si tienes mascotas, pero menos de tres");
//       break;
//     default:
//       print("Si tienes mascotas, y más de 3");
//       break;
//   }

//  // Mascotas

//   int mascotas = 5;

//   if (mascotas==0)
//     print("No tienes mascotas");

//   else if (mascotas<3)
//     print("Si tienes mascotas, pero menos de tres");
//   else
//     print("Si tienes mascotas, y más de 3");

//   bool cruzaPeaton = true;
//   bool luzVerde = true;

// //   == != >= <=

//   bool continuoMarcha = !cruzaPeaton && luzVerde;
//   print("$continuoMarcha = (\"$cruzaPeaton\" && \"$luzVerde\")");

// //   == != >= <=

//   bool resultado = valor1 <= valor2;
//   print("$resultado = (\"$valor1\" <= \"$valor2\")");

//   String valor1 = "Hola";
//   String valor2 = "Hola Mundo";

// //   == !=

//   bool resultado = valor1 != valor2;

//   print("$resultado = (\"$valor1\" != \"$valor2\")");

//   int valor1 = 9;
//   int valor2 = 2;

//   // + - / * ~/ %

//   print("$valor1 %= $valor2");
//   valor1 %= valor2;
//   print("$valor1");
//   print("$valor2");

//   int valor1 = 8;
//   int valor2 = 2;

//   // + - / * ~/ %

//   int resultado= valor1 % valor2;
//   print("$valor1 % $valor2 = $resultado");

//  /*Variables de cambio diario*/

  // int temp_cent=27;

  // /*Conversión a grados Farenheit*/
  // double temp_far= (((9/5)*temp_cent)+32);

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

