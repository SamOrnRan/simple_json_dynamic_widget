import 'package:flutter/material.dart';

class PlaceHolderImage extends StatelessWidget {
  const PlaceHolderImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.blueGrey,
            height: 300,
            width: double.infinity,
            child: FadeInImage.assetNetwork(
              fit: BoxFit.cover,
              imageErrorBuilder: (context, error, stackTrace) => const Image(
                  image: AssetImage('asset/image/carlooploading.gif')),
              placeholderScale: 2.3,
              placeholder: 'asset/image/carlooploading.gif',
              image:
                  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/assortment-of-colorful-ripe-tropical-fruits-top-royalty-free-image-995518546-1564092355.jpg',
            )),
      ),
    );
  }
}
