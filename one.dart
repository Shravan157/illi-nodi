
// Widgets in Flutter 
// Container widget in Flutter
// Center widget in Flutter


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Application')),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Center(child: Text('Hello Shravan')),
          ),
        ),
      ),
    );
  }
}

// Container:
// - A widget used to store one or more widgets
// - Helps in positioning and styling (padding, margin, color, etc.)
// - It is a widget class with a constructor

// the text written in lowercase -> appBar is a property
// the text written in uppercasee -> AppBar is a widget
// now we can have multiple properties and inside it we can have multiple

// Container:
// - A widget used to store one or more widgets
// - Helps in positioning and styling (padding, margin, color, etc.)
// - It is a widget class with a constructor

// The text written in lowercase (e.g., appBar) -> is a property (named parameter)
// The text written in uppercase (e.g., AppBar) -> is a widget (class)

// Now we can have multiple properties,
// and inside each property we can pass values.

// These values can be:
// - simple values (like color, numbers, strings)
// - or other widgets (most common in Flutter)

// This creates a nested structure of widgets inside widgets,
// which builds the UI step by step.

// Example pattern:
// ParentWidget(
//   property1: value,
//   property2: ChildWidget(
//     property: AnotherWidget(),
//   ),
// )
