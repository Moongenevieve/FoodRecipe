import 'package:flutter/material.dart';




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

