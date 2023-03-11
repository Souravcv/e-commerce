import 'package:e_comores/screens/signup_screen.dart';
import 'package:e_comores/widges/grid_items.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<Color> Clrs = [
      Color.fromARGB(255, 246, 111, 50),
      Color.fromARGB(255, 36, 131, 233),
      Color.fromARGB(255, 63, 208, 143),
    ];
    var imageList = [
      "assets/slide1.png"
          "assets/slide3.png"
          "assets/slide4.png"
    ];
    var iconimage = [
      "assets/icon1.png"
          "assets/icon2.png"
          "assets/icon3.png"
          "assets/icon4 (1).png"
          "assets/icon5.png"
          "assets/icon6.png"
          "assets/icon7.png"
    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xFFD4ECF7),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart,
                        size: 28,
                      )),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xFFD4ECF7),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: IconButton(
                      onPressed: () {
                        print("Logouttttttttttttttttt");
              FirebaseAuth.instance.signOut().then((value) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>const SignUpScreen()));
              });
                        print("hello");
                      },
                      icon: const Icon(
                        Icons.search_outlined,
                        size: 28,
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Column(
              children: const [
                Text(
                  "Hello Dear",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Lets shop something",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                for (int i = 0; i < 3; i++)
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.height / 5.5,
                    decoration: BoxDecoration(
                      color: Clrs[i],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "30% off on winter collection",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 21),
                              ),
                              Container(
                                width: 90,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  "Shop Now",
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          )),
                          //  Image.asset(imageList[i],height:  180,width: 110,)
                          Image.asset("assets/slide1.png"),
                        ]),
                  )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Top Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "See All",
                  style: TextStyle(color: Colors.black54),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Image.asset("assets/icon1.png"),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Image.asset("assets/icon5.png"),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Image.asset("assets/icon2.png"),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Image.asset("assets/icon3.png"),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Image.asset("assets/icon4 (1).png"),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Image.asset("assets/icon6.png"),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Image.asset("assets/icon7.png"),
                  ),
                ),
              ]),
            ),
          ), 
         const SizedBox(height: 10 ,),
         GridItems(),
        ],
      ),
    );
  }
}
