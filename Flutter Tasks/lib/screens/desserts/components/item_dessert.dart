import 'package:flutter/material.dart';
import '../../desserts/model.dart';

class ItemDessert extends StatelessWidget {
  final Product model;
  const ItemDessert({Key? key,required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
          ),
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: SizedBox(
          height: 193,
          child: Stack(
            children: [
              Image.network(
                model.imageUrl,
                height: 193,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                        ),
                      ]
                  ),
                  width: double.infinity,
                  padding: const EdgeInsetsDirectional.only(
                      start: 21, bottom: 24, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        model.name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color(0xffFC6011),
                          ),
                          Text(
                            model.rate.toString(),
                            style: const TextStyle(
                                fontSize: 11, color: Color(0xffFC6011)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            model.description,
                            style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const CircleAvatar(
                            backgroundColor: Color(0xffFC6011),
                            radius: 2,
                          ),
                          Text(
                            model.category,
                            style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
