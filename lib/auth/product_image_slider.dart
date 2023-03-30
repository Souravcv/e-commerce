


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImagesSlider extends StatelessWidget {
  const ProductImagesSlider({super.key});
  


  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.redAccent,
      indicatorBackgroundColor: Colors.white,
      height: 300,
      autoPlayInterval: 1000,
      indicatorRadius: 4,
      isLoop: true,


      children: [
        Padding(padding: const EdgeInsets.all(8),
        child: Image.asset("assets/p2.png"),
        ),
          Padding(padding: const EdgeInsets.all(8),
        child: Image.asset("assets/p1.png"),
        ),
          Padding(padding: const EdgeInsets.all(8),
        child: Image.asset("assets/p2.png"),
        ),
          Padding(padding: const EdgeInsets.all(8),
        child: Image.asset("assets/p1.png"),
        ),
      ],
      
    );

  }
}