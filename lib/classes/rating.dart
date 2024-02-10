import 'package:flutter/material.dart';



class RatingSection extends StatelessWidget {
  const RatingSection({
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
           Text(
            review,
            style: const TextStyle(
                  color: Color(0xffA9A9A9),
                  fontSize: 16,
                ),
        
        ),
          ],
        ),
    );
    
  }
}
