import 'package:flutter/material.dart';
import 'package:products/model/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
   ProductDetailsScreen({super.key, required this.product});

  ProdectModel product;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Description"),
      ),
      body: Column(
        children: [
          Hero(
            tag: product.name!,
            child: Image.network(product.image!)),
          Text(product.name!),
          Text(product.category!),
          Text(product.price!.toString()),

        ],
      ),
    );
  }
}