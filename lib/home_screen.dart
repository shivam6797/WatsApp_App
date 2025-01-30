import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 480,
        child: Row(
          children: [
            Expanded(
                flex: 35,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(  
                    children: [
                      SizedBox(     
                        height: 30,
                      ),
                      ///1 child
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffE6F1FA),
                          border: Border.all(
                            width: 1
                          )
                        ),
                        child: Text(
                          "Strawberry Pavlova",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      ///2 child
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xffE6F1FA),
                            border: Border.all(
                                width: 1
                            )
                        ),
                        child: Text(
                          "Pavlova is a meringue-based dessert named after the Russian ballerine Anna Pavlova.Pavlova featues a crisp crust and soft, light inside, topped with fruit and whipped cream.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 19,),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      ///3 child
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xffE6F1FA),
                            border: Border.all(
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.grey, size: 19,),
                                Icon(Icons.star, color: Colors.grey, size: 19,),
                                Icon(Icons.star, color: Colors.grey, size: 19,),
                                Icon(Icons.star, color: Colors.grey, size: 19,),
                                Icon(Icons.star, color: Colors.grey, size: 19,),
                              ],
                            ),
                            Text("170 Reviews")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ///4
                      Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xffE6F1FA),
                            border: Border.all(
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.book_outlined, color: Colors.green,),
                                Text("PREP:"),
                                Text("25 min"),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.book_outlined, color: Colors.green,),
                                Text("COOK:"),
                                Text("1 hr"),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.book_outlined, color: Colors.green,),
                                Text("FEEDS:"),
                                Text("4-6"),
                              ],
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 65,
                child: Image.asset(
                  "assets/images/cake_image.png",
                  fit: BoxFit.cover,
                  height: 500,
                ),
                ),
          ],
        ),
      ),
    );
  }
}
