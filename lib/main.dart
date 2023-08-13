import 'package:flutter/material.dart';

var kuki=0;

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext contex){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Kuki Counter App'),
          ),
        ),
        body:Center (
          child:Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children:[const MyAppHome()])) ,
      ),
    );
}

}

class MyAppHome extends StatefulWidget{
  const MyAppHome({super.key});

  @override
  State<MyAppHome> createState()=> _MyAppState();
}

class _MyAppState extends State<MyAppHome>{
    @override
  Widget build(BuildContext context){
    
    return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children:[
            Text('$kuki',textAlign: TextAlign.center,style: const TextStyle(fontSize: 45),),
            IconButton(onPressed: (){setState((){kuki+=1;});}, icon: const Icon(Icons.plus_one))
          ],

        );
  }
}