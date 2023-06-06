import 'package:flutter/material.dart';

class ItemBottomBar extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function() onPress;
  final bool isSelected;
  const ItemBottomBar({Key? key,required this.name,required this.icon,required this.onPress,required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: GestureDetector(
      onTap: onPress,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon,color: isSelected? Colors.orange:Colors.grey),
          Text(name)
        ],
      ),
    ));
  }
}