// Adding images to the image in our application 



import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title:Text('Adding images in app',style:TextStyle(fontWeight: FontWeight(1000))),backgroundColor: Colors.blue,),
        body:Center(child:Container(
          width:100,
          height:100,
          child:Image.asset('assets/images/image1.png'),
          
        ))
      )
    );
  }
}



// Better practice for adding images is creating a assets folder and then add the images there 


