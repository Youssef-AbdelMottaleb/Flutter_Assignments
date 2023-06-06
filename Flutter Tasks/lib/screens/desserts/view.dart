import 'package:flutter/material.dart';
import 'package:test1/screens/desserts/components/item_bottom_bar.dart';
import 'package:test1/screens/desserts/components/item_dessert.dart';
import 'package:test1/screens/desserts/components/search_bar.dart';
import 'package:test1/screens/desserts/controller.dart';

class DessertsScreen extends StatefulWidget {
  const DessertsScreen({Key? key}) : super(key: key);

  @override
  State<DessertsScreen> createState() => _DessertsScreenState();
}

class _DessertsScreenState extends State<DessertsScreen> {
  final controller = DessertsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottom: const SearchBar(),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
            const Text(" Desserts",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              width: 1320,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                )),
          ],
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(bottom: 40),
        itemBuilder: (context, index) => ItemDessert(
          model: controller.products[index],
        ),
        itemCount: controller.products.length,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.selectedItem = 4;
          setState(() {

          });
        },
        backgroundColor: controller.selectedItem==4?Colors.orange:Colors.grey,
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomAppBar(
            color: Colors.white,
            shape: const CircularNotchedRectangle(),
            notchMargin: 15,
            child: Row(
              children:
                List.generate(
                    controller.titles.length,
                    (index) => ItemBottomBar(
                      isSelected: index == controller.selectedItem,
                      onPress: (){
                        controller.selectedItem= index;
                        setState(() {

                        });
                      },

                        name: controller.titles[index],
                        icon: controller.icons[index])),
            )),
      ),
    );
  }
}
