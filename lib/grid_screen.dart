import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:productgridscreen_uii/grid_dummy.dart';



class ProductGridScreen extends StatelessWidget{
  void _goToSingle(context, productId) {
    Navigator.of(context).pushNamed("Single-Product", arguments: productId);
}

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Product Grid Screen",
        ),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        shrinkWrap: true,
        children: dummyGrid.map((Product) {
          return TextButton(
            onPressed: () => _goToSingle(context, Product["id"]),
            child: Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        child: Image.network(
                          Product["image"],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 90,
                        child: Container(
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Text(Product["name"]),
                ],
              ),
            ),
          );
      }).toList(),
   ));
  }
}