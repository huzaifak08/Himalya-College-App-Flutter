import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  ImageSlider({Key? key}) : super(key: key);

  final urlImages = [
    "https://i.pinimg.com/736x/77/d1/74/77d1748dbbb7beef9e8909722e30a8b8--medical-college-armed-forces.jpg",
    "https://abwa.edu.pk/wp-content/uploads/2019/03/ABWA-for-UHS.036.jpeg",
    "https://eaziline.com/wp-content/uploads/2021/06/amu.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: urlImages.length,
      options: CarouselOptions(
        height: 200,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        enlargeCenterPage: true,
      ),
      itemBuilder: (context, index, realIndex) {
        final urlImage = urlImages[index];
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
