//textfeild widget
import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override

  State<MyApp> createState()=> _MyAppState();
}
class _MyAppState extends State<MyApp>{
  TextEditingController nameController = TextEditingController();

  String? myName;
  bool i = true;
  

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Textfield Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.white   
            ), ),
            centerTitle: true,
            backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 30,
                ),
                obscureText: i,
                decoration: InputDecoration(
                  suffixIcon: 
                  IconButton(
                    icon: Icon(
                      i ? Icons.visibility : Icons.visibility_off,
                     ),
                    onPressed: () {
                     setState(() {
                       i = !i;
                    });
                  },

                  ),
                  hintText: "Enter Name ",
                  hintStyle: const TextStyle(
                    fontSize: 25,
                  ),
                  border: const OutlineInputBorder(),
                ),
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap:(){
                  myName = nameController.text;
                  nameController.clear();
                  setState(()  {});
                },
                child: Container(
                 padding:const  EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                 ),
                 decoration:  BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)  ,
                 ),             
                  child: const Text(
                    "Add Data",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Name: $myName",
                 style: const TextStyle(
                 fontSize: 20,
                 color: Colors.black

                  ),
                )

             ]),
             
        ),
  );
  }
}