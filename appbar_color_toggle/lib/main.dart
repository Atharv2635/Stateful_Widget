import "package:flutter/material.dart";

void main() {
  runApp(const ToggleAppBar());
}

class ToggleAppBar extends StatefulWidget {
  const ToggleAppBar({super.key});

  @override
  State createState() => _ToggleAppBarState();
}

class _ToggleAppBarState extends State {

  bool changeColor = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text ("Toggle Color"),
          titleTextStyle: const TextStyle(
            color: Colors.amber,
            fontSize: 20.5,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
          backgroundColor: changeColor ? Colors.blue : Colors.redAccent ,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(changeColor == true) {
              changeColor = false;
            } else {
              changeColor = true;
            }
            setState(() {});
          },
          backgroundColor: Colors.blueGrey,
          splashColor: Colors.black,
          child: const Icon(Icons.add_a_photo)
        ),
      ),
    );
  }
}