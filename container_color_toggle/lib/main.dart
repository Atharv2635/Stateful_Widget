import "package:flutter/material.dart";

void main() {
  runApp(const ContainerColor());
}

class ContainerColor extends StatefulWidget {
  const ContainerColor({super.key});

  @override
  State createState() => _ConatinerColorState();
}

class _ConatinerColorState extends State {

  bool colorChange = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container Color"),
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20.5,
            fontWeight: FontWeight.bold
          ), 
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Container(
                height: 150,
                width: 150,
                color: colorChange ? Colors.amber : Colors.green,
              ),
          ),
        floatingActionButton: FloatingActionButton(
          onPressed:() {
            if(colorChange == true) {
              colorChange = false;
            } else {
              colorChange = true;
            }
            setState(() {});
          },
          splashColor: Colors.blueGrey,
          child : const Text("Toggle")
          ),
      ),
    );
  }
}