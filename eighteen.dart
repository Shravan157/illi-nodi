// Date picker widget in flutter 

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime? datePicked;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker'),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('select a date',style: TextStyle(fontSize: 30),),
            SizedBox(height:20),
            Text(
              datePicked!=null ? '${datePicked!.day}-${datePicked!.month}-${datePicked!.year}' : 'Date Not Selected',
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),
            SizedBox(height:20),

            ElevatedButton(onPressed: () async{
              DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime.now().add(Duration(days:365)));

              if(pickedDate!=null){
                setState(() {
                  datePicked = pickedDate;
                });

              print( '${pickedDate.day}-${pickedDate.month}-${pickedDate.year}'); // this will get printed in console
              }
            }, child: Text('open date picker'))

          ],
        ),
      ),
    );
  }
}
