
import 'package:flutter/material.dart';

import '../../televisions/model.dart';

class ItemProduct extends StatefulWidget {
  final Product model;
   const ItemProduct({Key? key, required this.model,}) : super(key: key);

  @override
  State<ItemProduct> createState() => _ItemProductState();
}

class _ItemProductState extends State<ItemProduct> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(start: 20, top: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: const BorderRadiusDirectional.only(
          topStart: Radius.circular(25),
          bottomStart: Radius.circular(25),
        ),
      ),
      height: 350,
      width: 100,
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: IconButton(
                onPressed: () {
                  isLiked = !isLiked;
                  print(isLiked);
                  setState(() {});
                },
                icon:
                Icon(isLiked ? Icons.favorite : Icons.favorite_border)),
          ),
          Expanded(
              child: Image.network(
                widget.model.imageUrl,
                fit: BoxFit.fill,
              )),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("TV Name: ",
                  style: TextStyle(
                    fontSize: 20,
                  )),
              Text(widget.model.name,
                  style: const TextStyle(
                    fontSize: 20,
                  )),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("TV Size: ",
                  style: TextStyle(
                    fontSize: 20,
                  )),
              Text(widget.model.inches.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                  )),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("TV Model: ",
                  style: TextStyle(
                    fontSize: 20,
                  )),
              Text(widget.model.model.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                  )),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("TV Price: "),
              Text(widget.model.price.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                  )),
              const Text(" Pounds "),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
