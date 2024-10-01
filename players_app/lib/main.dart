import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {

  List pImages = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHV6bJW7sTpk6qkj48saTUOAEbKHUcMXL0qg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo0VgKYZ0Px0MmK850XGNxtrRKLaAkreHSGSApZgwKWRYz8hoTxkA_SlmMXGa0TMYRBLc&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLxkObS0Na5P9wWrAomnqiEM09SM8g1wp5GQf8nyARanKz27UCZ6OVtaUg-5k4TRTH_Ns&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2louykTE8_KMvVI7UDcKmhsGewTNJDKOLbQ&s"
    ];
  int index = 0;  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Players Images"),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20.5,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(pImages[index],
              ),
            ],
            ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(index < pImages.length-1) {
              index++;
            } else {
              index = 0;
            }
            setState(() {});
          },
          splashColor: Colors.blueGrey,
          hoverColor: Colors.black,
          child: const Icon(Icons.fast_forward_outlined),
        ),
      ),
    );
  }
}