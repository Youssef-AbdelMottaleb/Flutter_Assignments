import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
   const PaymentScreen({Key? key}) : super(key: key);

   @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
            const SizedBox(width: 15,),
            const Text("Payment Details",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(width: 1250,),
            IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart,color: Colors.black,)),

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30,),
              const Text("Custmoize Your Payment Method",style: TextStyle(fontSize: 20,color: Colors.black),),
              const SizedBox(height: 20,),

              TextButton(child: const Text("Click Here"),
                onPressed: () async {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25))),
                    builder: (context) => SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 700,
                            child: TextFormField(
                              controller: TextEditingController(),
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                              decoration: InputDecoration(
                                  fillColor: Colors.black12,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(25)),
                                  hintText: "Card Number",
                                  hintStyle: const TextStyle(color: Colors.grey)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text("Expiry :"),
                              const SizedBox(width: 15,),

                              SizedBox(
                                width: 80,
                                child: TextFormField(
                                  controller: TextEditingController(),
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                  decoration: InputDecoration(
                                      fillColor: Colors.black12,
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.circular(25)),
                                      hintText: "  MM",
                                      hintStyle: const TextStyle(color: Colors.grey)),
                                ),
                              ),
                              const SizedBox(width: 15,),

                              SizedBox(
                                width: 80,
                                child: TextFormField(
                                  controller: TextEditingController(),
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                  decoration: InputDecoration(
                                      fillColor: Colors.black12,
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.circular(25)),
                                      hintText: "  YY",
                                      hintStyle: const TextStyle(color: Colors.grey)),
                                ),
                              ),

                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 700,
                            child: TextFormField(
                              controller: TextEditingController(),
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                              decoration: InputDecoration(
                                  fillColor: Colors.black12,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(25)),
                                  hintText: "Security Code",
                                  hintStyle: const TextStyle(color: Colors.grey)),
                            ),
                          ),

                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 700,
                            child: TextFormField(
                              controller: TextEditingController(),
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                              decoration: InputDecoration(
                                  fillColor: Colors.black12,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(25)),
                                  hintText: "First Name",
                                  hintStyle: const TextStyle(color: Colors.grey)),
                            ),
                          ),

                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 700,
                            child: TextFormField(
                              controller: TextEditingController(),
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                              decoration: InputDecoration(
                                  fillColor: Colors.black12,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(25)),
                                  hintText: "Last Name",
                                  hintStyle: const TextStyle(color: Colors.grey)),
                            ),
                          ),
                          const SizedBox(height: 20,),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 400),
                            child: SwitchListTile(
                                title: const Text("You Can Remove This Card"),
                                value: isOn,
                                onChanged: (value) {
                                  isOn = value;
                                  setState(() {});
                                }),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                              width: 600,
                              height: 60,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.deepOrangeAccent),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      IconButton(onPressed: (){}, icon: const Icon(Icons.add,color: Colors.white,)),
                                      const SizedBox(width: 20,),
                                      const Text(
                                        "Add To Cart",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ))),
                          const SizedBox(
                            height: 35,
                          ),

                        ],
                      ),
                    ),
                  );
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),

    );
  }
}
