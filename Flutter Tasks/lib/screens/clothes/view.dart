import 'package:flutter/material.dart';
import 'package:test1/screens/clothes/components/item_product.dart';
import 'package:test1/screens/clothes/controller.dart';

class ClothesScreen extends StatefulWidget {
  const ClothesScreen({Key? key}) : super(key: key);

  @override
  State<ClothesScreen> createState() => _ClothesScreenState();
}

class _ClothesScreenState extends State<ClothesScreen> {
  final controller = ProductsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clothes and Fashion Products"),
      ),
      drawer: const Drawer(),
      /*body: ListView.builder(
        itemBuilder: (context, index) =>
            ItemProduct(model: controller.products[index]),
        itemCount: controller.products.length,
      ),*/
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) =>
            ItemProduct(model: controller.products[index]),
        itemCount: controller.products.length,
      ),
    );
  }
}
