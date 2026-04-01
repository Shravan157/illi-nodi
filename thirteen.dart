/* circle avatar in flutter */

// creating a contact list in flutter

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var arr = ['Shravan','Sumeet','Soham','Akshay','Ayush'];
    var arrContact = ['7865234102','8805693214','7856343420','8963254710','9956234120'];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold(
        appBar: AppBar(
          title: Text('App',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          backgroundColor: Colors.blue,
        ),

        body: ListView.separated(itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/contact.jpg',),
              
            ),
            title: Text(arr[index]),
            subtitle: Text(arrContact[index]),
            trailing: Icon(Icons.call),
          );
        }, separatorBuilder: (context,index){
          return Divider(
            height: 10,
            thickness: 1,
          );
        }, itemCount: arr.length)
      )
    );
  }
}
