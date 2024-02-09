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
                  ImageSection(
                      image: "assets/images/mainimage.png",
                      playimage: "assets/images/Playbutton.png",
                    ),      
                    Ratingsection(
                      rating: 4.5,
                      review: "(300 reviews)",
                    ),
                 
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



class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
    required this.image, required this.playimage,
  });

  final String image;
  final String playimage;
  @override
  Widget build(BuildContext context) {
   return Stack(
  children: [
    ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
      image,
      width: 600,
      height: 250,
      fit: BoxFit.cover,
    )
    ),

    Positioned.fill(
      child: Align(
        alignment: Alignment.center,
         child: Image.asset(
      playimage,
      width: 64,
      height: 64,
      fit: BoxFit.cover,
    )
      ),
    ),
  ],
);
  }
}



class Ratingsection extends StatelessWidget {
  const Ratingsection({
    super.key, required this.rating, required this.review,
  });

  final double rating;
  final String review;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:16.0),
      child: Row(
          children: [
            const Icon(
                Icons.star,
                color: Colors.yellow,
              ),
            
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: Text(
                "$rating", 
              style: const TextStyle(
                    fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                    ),
            ),
           Text(review,
            style: const TextStyle(
                color: Color.fromARGB(255, 134, 133, 133),
                  fontSize: 16,
                ),
        
        ),
          ],
        ),
    );
    
  }
}

