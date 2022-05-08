import 'package:flutter/material.dart';

import 'details_screen.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                        "Hi, Ahmed",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        decorationThickness: 0,
                      ),
                    ),
                    SizedBox(width: 15,),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/photo-1529626455594-4ff0802cfb7e.jpeg"),
                    ),
                  ],
                ),
              ),
            ),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.menu,
                              color: Colors.black,
                            ),
                            Text(
                              'Concrets',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                decorationThickness: 8,
                                decorationStyle: TextDecorationStyle.solid,
                                decorationColor: Colors.redAccent.withOpacity(0.3),
                              ),
                            ),
                            const Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                            'Coming soon',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            decorationThickness: 0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Material(
                                elevation: 7,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Container(
                                  width: 140,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/photo-1529626455594-4ff0802cfb7e.jpeg"),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                            'Ariana Grande',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          'Ariana Grande',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                                "This Month",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                decorationThickness: 0,
                              ),
                            ),
                            Text(
                                "See All",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                decorationThickness: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 27,
                                      backgroundImage: AssetImage("assets/photo-1529626455594-4ff0802cfb7e.jpeg"),
                                    ),
                                    const SizedBox(width: 15,),
                                    Column(
                                      children: const [
                                        Text(
                                            "Ariana Grande",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            decorationThickness: 0,
                                          ),
                                        ),
                                        Text("Ariana Grande",style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14,
                                          decorationThickness: 0,
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: ((context) => DatailsScreen()),),
                                    );
                                  },
                                  child: const Text(
                                      "Details",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        decorationThickness: 0,
                                      ),
                                    ),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 5,
                                    primary: Colors.white,
                                    onPrimary: Colors.grey,
                                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
