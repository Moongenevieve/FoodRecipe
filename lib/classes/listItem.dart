import 'package:flutter/material.dart';



class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.image,  required this.item,  required this.gram,
  });

 final String image;
 final String item;
  final String gram;


  @override
  Widget build(BuildContext context) {
    return Container (
        height: 100,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xffe5e5e5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                 
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      image,
                      fit: BoxFit.contain,
                    ),
                  ),
                  
                ),
                const SizedBox(width: 15), // Added SizedBox to add spacing between image and text
                Text(
                  item,
                  style: const TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              gram,
              style: const TextStyle(
                color: Color.fromARGB(255, 71, 71, 71),
                fontSize: 14,
              ),
            ),
          ],
                ),
        ),
    );
  }
}


