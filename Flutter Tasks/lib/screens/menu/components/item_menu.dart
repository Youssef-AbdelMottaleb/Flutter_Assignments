import 'package:flutter/material.dart';
import '../../menu/model.dart';

class ItemMenu extends StatelessWidget {
  final Product model;

  const ItemMenu({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white24),
      child: Stack(
        children: [
          Container(
            height: 135,
            width: 200,
            decoration: const BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25))),

          ),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),

              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Column(
                  children: [
                    Text(model.category,style: const TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),


                    const SizedBox(height: 10,),
                    //Align(child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.black,)),alignment: Alignment.bottomRight),
                    //SizedBox(height: 5,),
                    Text("${model.count} Items",style: const TextStyle(color: Colors.grey,fontSize: 17),),

                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35,left: 100),
            child: CircleAvatar(radius: 35,backgroundImage: NetworkImage(model.imageUrl)),
          )
        ],
      ),
    );
  }
}
