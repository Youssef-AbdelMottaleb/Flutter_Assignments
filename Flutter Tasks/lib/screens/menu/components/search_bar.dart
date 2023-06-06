import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(21),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          fillColor: const Color(0xffF2F2F2),
          filled: true,
          hintText: "Search Food",
          hintStyle: const TextStyle(
            color: Color(0xffB6B7B7),
            fontSize: 14,
          ),
          prefixIcon: const Padding(
            padding: EdgeInsetsDirectional.only(start: 20,end: 10),
            child: Icon(Icons.search,),
          )
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(87);
}
