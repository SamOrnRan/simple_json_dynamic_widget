import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSlideerWidget extends StatefulWidget {
  const CarouselSlideerWidget({Key? key}) : super(key: key);

  @override
  State<CarouselSlideerWidget> createState() => _CarouselSlideerWidgetState();
}

class _CarouselSlideerWidgetState extends State<CarouselSlideerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Carousel")),
      body: CarouselSlider.builder(
          itemCount: image.length,
          itemBuilder: (context, index, realIndex) {
            return Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 2, right: 2),
              width: double.infinity,
              color: Colors.blueGrey,
              child: Image.network(
                image[index],
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            );
          },
          options: CarouselOptions(
            height: 500,

            aspectRatio: 1,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: false,
            reverse: false,
            // padEnds: false,
            // autoPlay: true,
            // autoPlayInterval: const Duration(seconds: 3),
            // autoPlayAnimationDuration: Duration(milliseconds: 800),
            // autoPlayCurve: Curves.fastOutSlowIn,
            // enlargeCenterPage: true,
            // onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}

List<String> image = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzMuYiQbPFx6EwlL7mP0vfOx_qVKNtvbIsq2tNhDKtGToUXovBMWXUAQtE3QF_SYZp1NY&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzMuYiQbPFx6EwlL7mP0vfOx_qVKNtvbIsq2tNhDKtGToUXovBMWXUAQtE3QF_SYZp1NY&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzMuYiQbPFx6EwlL7mP0vfOx_qVKNtvbIsq2tNhDKtGToUXovBMWXUAQtE3QF_SYZp1NY&usqp=CAU",
];
