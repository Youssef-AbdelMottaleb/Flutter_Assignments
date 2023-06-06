import 'package:flutter/material.dart';
import 'package:test1/screens/bags_and_watches/components/item_product.dart';
import 'package:test1/screens/bags_and_watches/controller.dart';

class BagsAndWatchesScreen extends StatefulWidget {
  const BagsAndWatchesScreen({Key? key}) : super(key: key);

  @override
  State<BagsAndWatchesScreen> createState() => _BagsAndWatchesScreenState();
}

class _BagsAndWatchesScreenState extends State<BagsAndWatchesScreen> {
  final controller = ProductsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bags and Watches Products"),
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
