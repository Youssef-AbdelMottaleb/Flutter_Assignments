import 'package:flutter/material.dart';
import 'package:test1/screens/mobiles/components/item_product.dart';
import 'package:test1/screens/mobiles/controller.dart';

class MobilesScreen extends StatefulWidget {
  const MobilesScreen({Key? key}) : super(key: key);

  @override
  State<MobilesScreen> createState() => _MobilesScreenState();
}

class _MobilesScreenState extends State<MobilesScreen> {
  final controller = ProductsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile Products"),
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
