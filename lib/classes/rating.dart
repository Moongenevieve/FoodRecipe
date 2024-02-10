import 'package:flutter/material.dart';



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
