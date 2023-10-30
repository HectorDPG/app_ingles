import 'package:flutter/material.dart';
import 'package:tareas_practica/screens/ingles_avanzado.dart';
import 'package:tareas_practica/screens/ingles_intermedio.dart';
import 'package:tareas_practica/screens/ingles_basico.dart';

class Basico extends StatefulWidget{Basico({super.key});
  @override
  State<Basico> createState() => _BasicoState();
}
class _BasicoState extends State<Basico> {
  final TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context){
    final kTabpages = <Widget>[
      Center( child: MaterialApp( debugShowCheckedModeBanner: false,home: InglesBasico(),)),           
      Center( child: MaterialApp( debugShowCheckedModeBanner: false,home: Intermedio(),)),
      Center(child: MaterialApp(debugShowCheckedModeBanner: false, home: InglesAvanzado(),)),
    ];
    final kTabs = <Tab>[
      const Tab(icon: Icon(Icons.language), text:'Básico'),
      const Tab(icon: Icon(Icons.alarm),text:'Intermedio'),
      const Tab(icon: Icon(Icons.forum),text:'Avanzado'),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:   DefaultTabController(
        length: kTabs.length, 
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Aprendiendo Mi lenguaje inglés', 
            style: TextStyle(fontSize: 20, ),),
            backgroundColor: Colors.cyan,
            bottom: TabBar(tabs: kTabs),
          ),
          body: TabBarView( children: kTabpages),
        ),
      ),
    );
  }
} 







