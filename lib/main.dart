import 'package:flutter/material.dart';
import 'package:foodrecipe/listItemSection.dart';
import 'package:foodrecipe/classes/authorDetails.dart';
import 'package:foodrecipe/classes/image.dart';
import 'package:foodrecipe/classes/ingredient.dart';
import 'package:foodrecipe/classes/rating.dart';
import 'package:foodrecipe/classes/topic.dart';



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
            icon: const Icon(Icons.arrow_back)),
            actions: [
           IconButton(onPressed: (){}, 
           icon: const Icon(Icons.more_horiz)),
            ],
          ),
          body: const SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    
                    Topicsection(topic: "How to make french Toast"),
                    SizedBox(
                        height: 15,
                      ),
                   ImageSection(
                      image: "assets/images/mainimage.png",
                      playimage: "assets/images/Playbutton.png",
                    ),
                            
                            
                    Ratingsection(
                      rating: 4.5,
                      review: "(300 reviews)",
                    ),
                    Authordetailssection(
                      image: "assets/images/user.png",
                      name: "Kimmy Bella",
                      location: "Winchester, Manch",
                      image_location: "assets/images/Location.png",
                      ),
                    
                      Ingredientsection(
                        text_main: "Ingredients",
                        text_sub: "5 items",
                      ),
                
                
                     ListItemSection(),
                
                      
                
                        
                      ],
                ),
              ),
            ),
      ),
        ); 
  }
}


