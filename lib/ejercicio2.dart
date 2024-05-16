import 'package:flutter/material.dart';

void main() {
  runApp(const Ejercicio2());
}

class Ejercicio2  extends StatelessWidget {
  const Ejercicio2 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Productos"),
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context); 
              },
            ),
          ],
        ),
        body: Column(
          children: [
            ProductDetailScreen(
              product: Product(
                name: "Hamburguesa gourmet",
                price: "\S/.29.99",
                description:
                    "Nuestra hamburguesa gourmet comienza con una jugosa y sabrosa carne de res Angus, cuidadosamente seleccionada por nuestros chefs para garantizar la máxima calidad y frescura.",
                imageUrl:
                    'https://d31npzejelj8v1.cloudfront.net/media/recipemanager/recipe/1687289598_doble-carne.jpg',
              ),
            ),
            const SizedBox(height: 20),
            ProductDetailScreen(
              product: Product(
                name: "Pizza",
                price: "\S/.30.99",
                description:
                    "Disfruta de nuestra deliciosa pizza recién horneada, elaborada con los ingredientes más frescos y de la más alta calidad. ",
                imageUrl:
                    'https://pub-app-s3-prexpe.s3.sa-east-1.amazonaws.com/landings/images/ph2/ph2_mobile.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final String price;
  final String description;
  final String imageUrl;

  Product({
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
  });
}

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              product.imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            product.name,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            product.price,
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            product.description,
            style: const TextStyle(
              fontFamily: 'Nunito',
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
