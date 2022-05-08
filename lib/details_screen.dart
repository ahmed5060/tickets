import 'package:flutter/material.dart';

import 'ticket_screen.dart';

class DatailsScreen extends StatefulWidget {

  @override
  State<DatailsScreen> createState() => _DatailsScreenState();
}

class _DatailsScreenState extends State<DatailsScreen> {

  String dropdownvalue = 'Item 1';

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  String dropdownvalue1 = 'Item 1';

  var items1 = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        child: Column(
          children:[
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                          Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                  ),
                  const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ],
              ),

            ),
            const SizedBox(height: 25,),
            Text(
                "BUY TICKET",
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 30,
              ),
            ),
            Text(
                "DRAKE",
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 35,),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: const [
                                CircleAvatar(backgroundColor: Colors.greenAccent, radius: 10,),
                                SizedBox(height: 10,),
                                Text("Tribune 1", style: TextStyle(fontSize: 18),)
                              ],
                            ),
                            Column(
                              children: const [
                                CircleAvatar(backgroundColor: Colors.orange, radius: 10,),
                                SizedBox(height: 10,),
                                Text("Tribune 1", style: TextStyle(fontSize: 18),)
                              ],
                            ),
                            Column(
                              children: const [
                                CircleAvatar(backgroundColor: Colors.purple, radius: 10,),
                                SizedBox(height: 10,),
                                Text("Tribune 1", style: TextStyle(fontSize: 18),)
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset("assets/soccer-field-play-ground-lines-grass-pattern-background-107880368.jpg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(backgroundColor: Colors.grey[400], radius: 10,),
                                const SizedBox(width: 10,),
                                const Text("Available", style: TextStyle(fontSize: 18),)
                              ],
                            ),
                            Row(
                              children: const [
                                CircleAvatar(backgroundColor: Colors.black, radius: 10,),
                                SizedBox(width: 10,),
                                Text("Sold out", style: TextStyle(fontSize: 18),)
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Material(
                                  elevation: 5,
                                  borderRadius: BorderRadius.circular(20),
                                  child: DropdownButtonFormField(                               decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                      ),
                                      dropdownColor: Colors.white,
                                      value: dropdownvalue,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue = newValue!;
                                        });
                                      },
                                      items: items.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15,),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Material(
                                  elevation: 5,
                                  borderRadius: BorderRadius.circular(20),
                                  child: DropdownButtonFormField(                               decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                      ),
                                      dropdownColor: Colors.white,
                                      value: dropdownvalue,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue = newValue!;
                                        });
                                      },
                                      items: items.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: (){},
                                child: const Text(
                                  "Cancel",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    decorationThickness: 0,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(200, 60),
                                  primary: Colors.white,
                                  onPrimary: Colors.grey,
                                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => TicketView()));
                                },
                                child: const Text(
                                  "Purchase",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    decorationThickness: 0,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(200, 60),
                                  elevation: 5,
                                  primary: Colors.redAccent,
                                  onPrimary: Colors.grey,
                                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
