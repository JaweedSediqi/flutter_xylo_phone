import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: Main(),
  ));
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  Expanded res(Color color,int nodenum){
    return Expanded(child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color)
        ,onPressed: () async{
             final p1=new AudioPlayer();
             p1.play(AssetSource('note$nodenum.wav'));
    }, child: Text("")));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          res(Colors.red,1),
          res(Colors.purpleAccent,2),
          res(Colors.yellowAccent,3),
          res(Colors.green,4),
          res(Colors.blue,5),
          res(Colors.pink,6),
          res(Colors.orange,7),
        ],
      ),
    ));
  }
}
