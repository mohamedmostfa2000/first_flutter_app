import 'package:flutter/material.dart';

class learn_flutter_page extends StatefulWidget {
  const learn_flutter_page({super.key});

  @override
  State<learn_flutter_page> createState() => _learn_flutter_pageState();
}

class _learn_flutter_pageState extends State<learn_flutter_page> {
  bool isSwitch = false ;
  bool? isCheckedbox = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/panda.jpg"),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueAccent,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "this is a text widget",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style : ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.green :Colors.blue,
              ),
              onPressed: () {
                debugPrint("Elevated Button");
              },
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Outlined Button ");
              },
              child: const Text("Outlined Button "),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text Button");
              },
              child: const Text("Text Button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("this is the row");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text("Row Widget"),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(value: isSwitch, onChanged: (bool newBool){
              setState(() {
                isSwitch = newBool;
              });
            }),
            Checkbox(value: isCheckedbox, onChanged: (bool? newBool){
              setState(() {
                isCheckedbox = newBool;
              });
            }),
            Image.network("https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg")
          ],
        ),
      ),
    );
  }
}
