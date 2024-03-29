import 'package:flutter/material.dart';



class AuthorDetailsSection extends StatelessWidget {
  const AuthorDetailsSection(
      {super.key,
      required this.image,
      required this.name,
      required this.location,
      required this.imageLocation});

  final String image;
  final String name;
  final String location;
  final String imageLocation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipOval( 
                  child: Image.asset(
                        image,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                      ),

          const SizedBox(
             width: 12,
              ),
               
          Column(
            
              children: [
                Text(
                  name,
                  style: const TextStyle(
                   fontSize: 16,
                    fontWeight: FontWeight.w700,
                    ),
                ),
      
                Row (children: [
                       Image.asset(
                        imageLocation,
                        // width: 20,
                        // height: 20,
                        fit: BoxFit.contain,
                              ),
                             
                                   Text(
                          location,
                          style: const TextStyle(
                            
                        fontWeight: FontWeight.normal, 
                        fontSize: 12,
                        color: Colors.grey,
                            ),
                        ),
                             
                    ],
                    
                    ),
                 
      
              ],
          
          ),
        const Spacer(),

       TextButton(onPressed: () {},
         style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xffe23e3e)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)
                )
              ),
          ),
      
          child: const Text(
            "Follow",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
       ),
          
        ]
      ),
    );
  }
}

