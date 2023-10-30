import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Intermedio extends StatelessWidget {
  const Intermedio({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          ElevatedButton(
            child: SizedBox(
                  width: 200,
                  child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Traduce esta oracion',),
                          Icon(Icons.play_arrow)
                        ],
                      ),
                      
                    
                  
                ),
            onPressed: (){
            final player=AudioCache();
            player.play('grabacion_ingles.mp3');
          }, 
                
          ),
          Container(
            width: 200,
            child: TextField(  
            ),
          )
        ],
      ),
    );
  }
}