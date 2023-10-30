import 'package:flutter/material.dart';
//import 'package:tareas_practica/screens/form.dart';
import 'package:tareas_practica/screens/home_screen.dart';
import 'package:tareas_practica/screens/ingles_avanzado.dart';
import 'package:tareas_practica/screens/ingles_basico.dart';
import 'package:tareas_practica/screens/ingles_intermedio.dart';

void main() => runApp( const MyApp());
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:    HomeScreen(),
      routes: {
        'InglesBasico':     (BuildContext context)    => InglesBasico(),
        'InglesIntermedio': (BuildContext context)    => Intermedio(),
        'InglesAvanzado':   (BuildContext context)    => InglesAvanzado(),
      },
    );
  }
}