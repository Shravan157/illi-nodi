// profile banner using flutter

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // app UI
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'App',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsetsDirectional.all(24),
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Color.fromARGB(255, 158, 186, 210),
            ),
            child: Column(
              children: [
                Padding(
                  padding:EdgeInsets.only(top: 20),
                  child: CircleAvatar(radius: 50,backgroundColor: Colors.white,
                    child: Text('S',style: TextStyle(fontSize: 60,fontWeight: FontWeight.w300,color: Colors.black),),
                  ),
                ),
                SizedBox(height:20),
                Text('Shravan Parthe',style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black ,),),
                SizedBox(height: 15,),
                Text('Full-Stack | Java | Python ',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w100,color: Colors.black ,),),
                SizedBox(height:20),
                ElevatedButton(child: Text('+ connect',style:TextStyle(fontSize: 16)),onPressed: (){
                  print('Connection sent');
                },)
              ],
            ),
          ),
        ),
      )
    ));
  }
}
