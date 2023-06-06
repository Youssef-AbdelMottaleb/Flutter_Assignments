import 'package:flutter/material.dart';
import 'package:test1/screens/menu/components/item_menu.dart';
import 'package:test1/screens/menu/controller.dart';

import '../menu/components/item_bottom_bar.dart';
import '../menu/components/search_bar.dart';

class MenuScreen extends StatefulWidget {
   const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final controller = MenuController();

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
            const Text(" Menu",
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
        itemBuilder: (context, index) => ItemMenu(
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
