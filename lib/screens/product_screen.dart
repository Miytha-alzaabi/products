import 'package:flutter/material.dart';
import 'package:products/model/product_model.dart';
import 'package:products/screens/product_details.dart';

class ProductScreen extends StatelessWidget {
   ProductScreen({super.key});

 

  List<ProdectModel> products = [
    ProdectModel(name: "Shose1",category: "shose", price: 200.0, image: "https://www.flaticon.com/free-icon/shoes_2742687"),
    ProdectModel(name: "Shose2",category: "shose", price: 200.0, image: "https://www.intersport.com.kw/media/catalog/product/c/0/c07a505baec22c6d62796c298f97c1a0690bcb528df122174c645e9c5ca6940f.jpeg"),
    ProdectModel(name: "Shose3",category: "shose", price: 200.0, image: "https://www.intersport.com.kw/media/catalog/product/c/0/c07a505baec22c6d62796c298f97c1a0690bcb528df122174c645e9c5ca6940f.jpeg"),
    ProdectModel(name: "Shose4",category: "shose", price: 200.0, image: "https://www.intersport.com.kw/media/catalog/product/c/0/c07a505baec22c6d62796c298f97c1a0690bcb528df122174c645e9c5ca6940f.jpeg"),
    ProdectModel(name: "Shose5",category: "shose", price: 200.0, image: "https://www.intersport.com.kw/media/catalog/product/c/0/c07a505baec22c6d62796c298f97c1a0690bcb528df122174c645e9c5ca6940f.jpeg"),
    ProdectModel(name: "Shose6",category: "shose", price: 200.0, image: "https://www.amazon.eg/-/en/Vans-Old-Skool-Laced-Black/dp/B01MXF6F5H"),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                 MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(
                    product: products[index]
                  ),
                  )
                  );
            },
            leading: Hero(
              tag: products[index].name!,
              child: Image.network(
                products[index].image!,
                width: 50,
                height: 50,
              ),
            ),
            title: Text(products[index].name!),
            subtitle: Text(products[index].category!),
            trailing: Text(products[index].price!.toString()),
          );
        },
        ),
    );
  }
}