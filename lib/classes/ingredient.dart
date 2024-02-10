import 'package:flutter/material.dart';




class IngredientSection extends StatelessWidget {
const IngredientSection({super.key,  required this.textMain, required this.textSub,});


  final String textMain;
  final String textSub;

  @override
  Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.only(top:16.0),
       child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
        Text(
            textMain,
            style: const TextStyle(
              color: Color(0xFF000000),
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
       
        Text(
            textSub,
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

