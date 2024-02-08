import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Poppins",
        ),
         title: 'Food Recipe',
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: (){}, 
            icon: Icon(Icons.arrow_back)),
            actions: [
           IconButton(onPressed: (){}, 
           icon: Icon(Icons.more_horiz)),
            ],
          ),
          body: const Padding(
            padding: EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Topicsection(topic: "How to make french Toast"),
                 
              
                      
                    ],
              ),
            ),
          ),

      ),
      
        );
        
  }
}

class Topicsection extends StatelessWidget {
  const Topicsection({
    super.key,
    required this.topic,
  });

  final String topic;
  @override
  Widget build(BuildContext context) {
    return Text(
      topic,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xff000000)
      ),
    );
  }
}