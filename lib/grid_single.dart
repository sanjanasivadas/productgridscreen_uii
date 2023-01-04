import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:productgridscreen_uii/grid_dummy.dart';

class SingleProductGridscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  final productId = ModalRoute.of(context)?.settings.arguments;
  final product = dummyGrid.firstWhere((e) => e["id"] == productId);
  return Scaffold(
      appBar: AppBar(
        title: Text(product["name"]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          // product name
          Text(
            "Name: ${product['name']}",
            style: const TextStyle(fontSize: 30, color: Colors.purple),
          ),
          // product price
          Text(
            "Price: ${product['price'].toString()}",
            style: const TextStyle(fontSize: 20, color: Colors.red),
          ),
          // product description
          Text("Description ${product['description']}"),

         Image.network(product["image"]),
         // Image.asset(product["image1"]),
         
        ]),
      ),
    );
  }
  }

