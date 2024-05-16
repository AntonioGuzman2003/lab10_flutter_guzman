import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const Ejercicio3());
}

class Ejercicio3  extends StatelessWidget {
  const Ejercicio3 ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Galería de Imágenes"),
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context); 
              },
            ),
          ],
        ),
        body: ListView(
          children: const [
            ImageItem(
              title: "Imagen PNG",
              imagePath: 'assets/images/lossimps.png',
              fontFamily: 'Arial',
              imageType: ImageType.Asset,
            ),
            ImageItem(
              title: "Imagen JPEG",
              imagePath: 'assets/images/mariokart.jpg',
              fontFamily: 'TimesNewRoman',
              imageType: ImageType.Asset,
            ),
            ImageItem(
              title: "Imagen SVG",
              imagePath: 'assets/images/goku.svg',
              fontFamily: 'Roboto',
              imageType: ImageType.SVG,
            ),
          ],
        ),
      ),
    );
  }
}

enum ImageType { Asset, SVG }

class ImageItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final String fontFamily;
  final ImageType imageType;

  const ImageItem({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.fontFamily,
    required this.imageType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (imageType == ImageType.Asset)
            Image.asset(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            )
          else if (imageType == ImageType.SVG)
            SvgPicture.asset(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontFamily: fontFamily,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}