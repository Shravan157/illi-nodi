import 'package:flutter/material.dart';

// Scroll view
// First we will create multiple widgets one after another to cause overflow
// And then to manage the overflow we will add the scroll feature
// Where it can be used , if we have a form with multiple fields , some can go out of screen
// so we will wrap it in column , then we will wrap it in SingleChildScrollView

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Instagram App Layout',
            style: TextStyle(fontWeight: FontWeight(800)),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [

                // container1 - Row of small boxes
                Padding(
                  padding: EdgeInsetsGeometry.all(8),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 11, right: 8),
                          height: 50,
                          width: 50,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 212, 170, 127),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 11, right: 8),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 98, 27, 27),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 11, right: 8),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 130, 130, 41),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 11, right: 8),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 54, 134, 163),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 11, right: 8),
                          height: 50,
                          width: 50,
                          padding: EdgeInsets.all(80),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 128, 128, 77),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 11, right: 8),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 74, 198, 82),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 11, right: 8),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 107, 34, 34),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 11, right: 8),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 63, 97, 28),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 11, right: 8),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // container2
                Container(
                  height: 200,
                  color: Color.fromARGB(255, 61, 59, 55),
                ),

                // container3
                Container(
                  height: 200,
                  color: Color.fromARGB(255, 172, 104, 61),
                ),

                // container4
                Container(
                  height: 200,
                  color: Color.fromARGB(255, 35, 86, 145),
                ),

                // container5
                Container(
                  height: 200,
                  color: Color.fromARGB(255, 119, 167, 113),
                ),

                // adding the last widget shows 141 pixels are overflown
                Container(height: 200, color: Color.fromARGB(255, 132, 63, 86)),
                Container(height: 200, color: Color.fromARGB(255, 11, 174, 255)),
                Container(height: 200, color: Color.fromARGB(94, 66, 94, 108)),
                Container(height: 200, color: Color.fromARGB(255, 200, 70, 183)),
                Container(height: 200, color: Color.fromARGB(255, 228, 110, 110)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
