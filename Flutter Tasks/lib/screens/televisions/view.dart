import 'package:flutter/material.dart';
import 'package:test1/screens/televisions/components/item_product.dart';
import 'package:test1/screens/televisions/controller.dart';

class TelevisionsScreen extends StatefulWidget {
  const TelevisionsScreen({Key? key}) : super(key: key);

  @override
  State<TelevisionsScreen> createState() => _TelevisionsScreenState();
}

class _TelevisionsScreenState extends State<TelevisionsScreen> {
  final controller = ProductsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TV Products"),
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
