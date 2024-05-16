import 'package:flutter/material.dart';

void main() {
  runApp(const Ejercicio1());
}

class Ejercicio1  extends StatelessWidget {
  const Ejercicio1 ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lista con Imágenes y Fuentes"),
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
            CategoryItem(
              title: "Manzana",
              imageUrl: 'assets/images/apple.webp',
              fontFamily: 'OpenSans',
            ),
            CategoryItem(
              title: "Perro",
              imageUrl: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQgByBT5IiAT_a2x9pUVb4VMoOrlzHH7Jrzj-HB5jzHlR4lNLMS',
              fontFamily: 'Lato',
            ),
            CategoryItem(
              title: "París",
              imageUrl: 'assets/images/paris.jpg',
              fontFamily: 'Ubuntu',
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String fontFamily;

  const CategoryItem({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: imageUrl.startsWith('http')
                    ? NetworkImage(imageUrl)
                    : AssetImage(imageUrl) as ImageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontFamily: fontFamily,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}