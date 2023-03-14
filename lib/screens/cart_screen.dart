import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  List<String> pNames = [
    "Apple Watch -M2",
    "White Tshirt",
    "Nike Shoe",
    "Ear Headphone",
  ];
  var pSizes = ["38", "M", "S", "40"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.only(top: 40, right: 20, left: 20),
          child: Column(
            children: [
             const Align(
                child: Text(
                  "My Cart",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            const  SizedBox(height: 40,),
            Column(
              children: [
            
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 248, 248, 248),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    
                    children: [
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width / 4,
                        margin:const EdgeInsets.only(left: 8),
                         padding:const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color:const Color(0xFFD4ECF7),
                          borderRadius: BorderRadius.circular(10),
    
                        ),
                        child:Image.asset("assets/Apple Watch -M2.png"),
                      ),
                       
    
                    ],
                    
                  ),
                  
                ),
               const SizedBox(height: 10,),
                  Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 248, 248, 248),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    
                    children: [
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width / 4,
                       
                        margin:const EdgeInsets.only(left: 8),
                         padding:const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color:const Color(0xFFD4ECF7),
                          borderRadius: BorderRadius.circular(10),
    
                        ),
                        child:Image.asset("assets/Ear Headphone.png"),
                      ),
                      
                       
    
                    ],
                    
                  ),
                  
                ),
               const SizedBox(height: 10,),
                  Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 248, 248, 248),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    
                    children: [
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width / 4,
                        margin:const EdgeInsets.only(left: 8),
                         padding:const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color:const Color(0xFFD4ECF7),
                          borderRadius: BorderRadius.circular(10),
    
                        ),
                        child:Image.asset("assets/Nike Shoe.png"),
                      ),
                      
                       
    
                    ],
                    
                  ),
                  
                ),
    
                 SizedBox(height: 10,),
                  Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 248, 248, 248),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    
                    children: [
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width / 4,
                        margin: EdgeInsets.only(left: 8),
                         padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFFD4ECF7),
                          borderRadius: BorderRadius.circular(10),
    
                        ),
                        child:Image.asset("assets/White Tshirt.png"),
                      ),
                      
                       
    
                    ],
                    
                  ),
                  
                ),
                
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}
