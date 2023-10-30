import 'package:flutter/material.dart';
import 'ingles_tapbar.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:   Scaffold(
        backgroundColor: Color(0xFFd173bb3),
        body:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:[
              Color(0xFFd173bb3),
              Colors.cyan,
            ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                )
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Madi Inglés', style: TextStyle(fontSize: 50, color: Colors.white, fontFamily: AutofillHints.postalAddress),),
                    const SizedBox(height: 10,),
                    Text('¿Que quieres aprender hoy?', style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: AutofillHints.postalAddress),),
                    const SizedBox(height: 30,),
                    Image.asset('assets/hector.jpg', height: 150,),
                    const SizedBox(height: 30,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: const Text('Vamos a aprender ingles!',
                          style: TextStyle(fontSize: 20, color: Colors.white,),),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    ElevatedButton(
                      child: const Text('Continuar'),
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> Basico()),
                        );
                      },)
                  ],
                ),
              ),
            ),
));
}
}