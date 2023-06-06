import 'package:flutter/material.dart';
import 'package:test1/screens/gold_and_jewelleries/components/item_product.dart';
import 'package:test1/screens/gold_and_jewelleries/controller.dart';

class GoldsAndJewelleries extends StatefulWidget {
  const GoldsAndJewelleries({Key? key}) : super(key: key);

  @override
  State<GoldsAndJewelleries> createState() => _GoldsAndJewelleriesScreenState();
}

class _GoldsAndJewelleriesScreenState extends State<GoldsAndJewelleries> {
  final controller = ProductsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gold and Diamond Products"),
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
