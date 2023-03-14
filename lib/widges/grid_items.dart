import 'package:e_comores/screens/item_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GridItems extends StatelessWidget {
  GridItems({super.key});
  var pNames = [
    "Apple Watch -M2",
    "White Tshirt",
    "Nike Shoe",
    "Ear Headphone",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pNames.length,
      physics:const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return Container(
          margin:const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color:const Color(0xFFD4ECF7),
              boxShadow:const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  spreadRadius: 2,
                )
              ]),
          child: Padding(
            padding:const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const  Text(
                      "30% off",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    IconButton(
                        onPressed: () {}, icon:const Icon(Icons.favorite_border))
                  ],
                ),
               const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>const ItemScreen()));
                      
                    },
                    child: Image.asset(
                      "assets/${pNames[index]}.png",
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
              
                Padding(
                  padding:const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pNames[index],
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                     
                      
                    
                    ],
                  ),
                ),
                
                      // Row(
                      //   children: [
                      //     Text(
                      //       "\$100",
                      //       style: TextStyle(
                      //           fontSize: 15,
                      //           color: Colors.redAccent,
                      //           fontWeight: FontWeight.w500),
                      //     ),
                      //     SizedBox(width: 5,),
                      //     Text(
                      //         "130% off",
                      //       style: TextStyle(
                      //         decoration: TextDecoration.lineThrough,
                      //           fontSize: 13,
                      //           color: Colors.black.withOpacity(0.4),
                      //           fontWeight: FontWeight.w500),
                      //     )
                      //   ],
                      // )
              ],
            ),
          ),
        );
      },
    );
  }
}
