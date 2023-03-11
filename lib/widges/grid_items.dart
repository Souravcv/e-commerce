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
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFD4ECF7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 2,
                  )
                ]),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "30% off",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.favorite_border))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/${pNames[index]}.png",
                      height: 120,
                      width: 120,
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(padding: EdgeInsets.all(8))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
