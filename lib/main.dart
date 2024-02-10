import 'package:flutter/material.dart';
import 'package:foodrecipe/list_item_section.dart';
import 'package:foodrecipe/classes/author_details.dart';
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
                    
                    TopicSection(topic: "How to make french Toast"),
                    SizedBox(
                        height: 15,
                      ),
                   ImageSection(
                      image: "assets/images/mainimage.png",
                      playImage: "assets/images/Playbutton.png",
                    ),
                            
                            
                    RatingSection(
                      rating: 4.5,
                      review: "(300 reviews)",
                    ),
                    AuthorDetailsSection(
                      image: "assets/images/user.png",
                      name: "Kimmy Bella",
                      location: "Winchester, Manch",
                      imageLocation: "assets/images/Location.png",
                      ),
                    
                      IngredientSection(
                        textMain: "Ingredients",
                        textSub: "5 items",
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


