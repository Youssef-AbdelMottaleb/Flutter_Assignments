import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DialogsAndBoxesScreen extends StatefulWidget {
  const DialogsAndBoxesScreen({Key? key}) : super(key: key);

  @override
  State<DialogsAndBoxesScreen> createState() => _DialogsAndBoxesScreenState();
}

class _DialogsAndBoxesScreenState extends State<DialogsAndBoxesScreen> {
  bool isOn = false;
  bool isOn2 = false;
  bool isChecked = false;
  bool isChecked2 = false;

  // DateTime? dateTime;
  // TimeOfDay? timeOfDay;

  String? selectedName;
  String? selectedName2;
  List<String> names = [
    "Youssef",
    "Amr",
    "Ali",
    "Mahdy",
    "Aziz",
    "Mohee",
    "Kareem"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: context , builder: (context){
          return AlertDialog(
            title: const Text("Close"),
            content: const Text("Are you sure you want to close the app"),
            actions: [
              ElevatedButton(onPressed: (){
                if(Platform.isAndroid)
                  {
                    SystemNavigator.pop();
                  }
                else if(Platform.isIOS)
                  {
                    exit(0);
                  }
              }, child: const Text("Close")),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text("Cancel")),
            ],

          );
        },);
      }),


      /*
      floatingActionButton: FloatingActionButton(onPressed: () async{
        dateTime = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(Duration(days: 365)));
        setState(() {

        });
      }),

      */

      /*
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.cyanAccent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25))),
            builder: (context) => Column(
              children: [
                Text("Hello"),
                SwitchListTile(
                    title: Text("Youssef Abdel Mottaleb"),
                    subtitle: Text("Machine Learning Engineer"),
                    secondary: CircleAvatar(backgroundColor: Colors.grey),
                    value: isOn2,
                    onChanged: (value) {
                      isOn2 = value;
                      setState(() {});
                    }),
                CheckboxListTile(
                    title: Text("Youssef Abdel Mottaleb"),
                    subtitle: Text("Machine Learning Engineer"),
                    secondary: CircleAvatar(backgroundColor: Colors.grey),
                    value: isChecked2,
                    onChanged: (value) {
                      isChecked2 = value!;
                      setState(() {});
                    }),
              ],
            ),
          );
          setState(() {});
        },
      ),
       */

      /*
      floatingActionButton: FloatingActionButton(onPressed: () async{
        timeOfDay = await showTimePicker(context: context, initialTime: TimeOfDay.now());
        setState(() {

        });
      }),

       */
      body: ListView(
        children: [
          /*
          dateTime!=null? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(dateTime.toString().split(" ").first,style: TextStyle(fontSize: 30,color: Colors.blue)),
          ) : SizedBox.shrink(),

           */

          /*
          timeOfDay!=null? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(timeOfDay!.hour.toString()+":"+timeOfDay!.minute.toString()+" "+timeOfDay!.period.toString(),style: TextStyle(fontSize: 30,color: Colors.blue)),
          ) : SizedBox.shrink(),
          */
          Switch(
              value: isOn,
              onChanged: (value) {
                isOn = value;
                setState(() {});
              }),
          SwitchListTile(
              title: const Text("Youssef Abdel Mottaleb"),
              subtitle: const Text("Machine Learning Engineer"),
              secondary: const CircleAvatar(backgroundColor: Colors.grey),
              value: isOn,
              onChanged: (value) {
                isOn = value;
                setState(() {});
              }),
          Checkbox(
              value: isChecked,
              onChanged: (value) {
                isChecked = value!;
                setState(() {});
              }),
          CheckboxListTile(
              title: const Text("Youssef Abdel Mottaleb"),
              subtitle: const Text("Machine Learning Engineer"),
              secondary: const CircleAvatar(backgroundColor: Colors.grey),
              value: isChecked,
              onChanged: (value) {
                isChecked = value!;
                setState(() {});
              }),
          DropdownButton<String>(
              underline: const SizedBox.shrink(),
              borderRadius: BorderRadius.circular(25),
              hint: const Text("Most Charismatic Person"),
              value: selectedName,
              items: List.generate(
                names.length,
                (index) => DropdownMenuItem(
                  value: names[index],
                  child: Text(names[index]),
                ),
              ),
              onChanged: (value) {
                selectedName = value!;
                print(selectedName);
                setState(() {});
              }),
          DropdownButton<String>(
              underline: const SizedBox.shrink(),
              borderRadius: BorderRadius.circular(25),
              value: selectedName2,
              items: List.generate(
                names.length,
                (index) => DropdownMenuItem(
                  value: names[index],
                  child: Text(names[index]),
                ),
              ),
              onChanged: (value) {
                selectedName2 = value!;
                print(selectedName2);
                setState(() {});
              }),
        ],
      ),
    );
  }
}
