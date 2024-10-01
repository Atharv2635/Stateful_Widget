import "package:flutter/material.dart";

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State createState() => _CounterAppState();
}

class _CounterAppState extends State {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 138, 156, 197),
        appBar: AppBar(
          title: const Text("Counter App"),
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 25.5,
            fontWeight: FontWeight.bold
            ),
          backgroundColor: Colors.blue,
        ),

        body: Center(
          child: Text("$count"),
          
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count++;
            setState(() {});
          },
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.add,
            color: Colors.amber,
            ),
        ),
      ),
    );
  }
}
