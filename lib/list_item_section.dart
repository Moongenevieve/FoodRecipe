import 'package:flutter/material.dart';
import 'package:foodrecipe/classes/list_item.dart';


class ListItemSection extends StatelessWidget {
  const ListItemSection({super.key});

  @override
  Widget build(BuildContext context) {
  
    return const Column(
          children: [
              SizedBox(
                 height: 15, ),
        
              ListItem(
                  image: "assets/images/bread.png",
                  item: "Bread",
                  gram: "200g", 
                  ),

              SizedBox(
                height: 15,),
            
              ListItem(
                image: "assets/images/egg.png",
                 item: "Egg",
                 gram: "200g",  ),
        
              SizedBox(
                height: 15, ),

                ListItem(
                  image: "assets/images/milk.png",
                  item: "Milk",
                  gram: "200g", ),

                SizedBox(
                  height: 15, ),


                ListItem(
                  image: "assets/images/strawberry.png",
                  item: "Strawberry",
                  gram: "200g", ),

                SizedBox(
                   height: 15, ),
          

                ListItem(
                  image: "assets/images/butter.png",
                  item: "Butter",
                  gram: "200g", ),
          ],
        );
   

  }
}
