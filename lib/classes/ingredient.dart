import 'package:flutter/material.dart';




class Ingredientsection extends StatelessWidget {
const Ingredientsection({super.key,  required this.text_main, required this.text_sub,});


  final String text_main;
  final String text_sub;

  @override
  Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.only(top:16.0),
       child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
        Text(
            text_main,
            style: const TextStyle(
              color: Color(0xFF000000),
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
       
        Text(
            text_sub,
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

