import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // List Array & String value
  final items = ['Padding  1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DropDown List',
          style: TextStyle(
              color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        // DrpButton dans un container
        child: Container(
          // Container size
          //width: 340,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          margin: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: Colors.blue, width: 3),
          ),
          // To Hide the line
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              // DropDown Style
              icon: const Icon(Icons.arrow_drop_down, color: Colors.blue),
              iconSize: 38,
              isExpanded: true,
              items: items.map(buildMenuItem).toList(),
              onChanged: (value) => setState(() => this.value = value),
            ),
          ),
        ),
      ),
    );
  }

  // Function for DropDownMenu
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(
              color: Colors.purple, fontSize: 24.0, fontWeight: FontWeight.w500),
        ),
      );
}
