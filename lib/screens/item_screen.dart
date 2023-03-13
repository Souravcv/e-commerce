import 'package:e_comores/screens/product_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xFFD4ECF7),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Stack(
              children: [
                Center(
                  child: ProductImagesSlider(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Apple Watch series 6",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          RatingBar.builder(
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 25,
                              itemBuilder: (context, _) => IconButton(
                                  onPressed: () {}, icon: Icon(Icons.star)),
                              onRatingUpdate: (rating) {}),
                          const SizedBox(
                            width: 5,
                          ),
                          Text("(450)")
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "\$140",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "\$200",
                  style: TextStyle(
                      color: Colors.black45,
                      decoration: TextDecoration.lineThrough),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "The Apple Watch is designed to work in tandem with an iPhone and offers a range of features including fitness tracking, communication tools, mobile payments, music playback, and more. It has a variety of sensors built-in, including a heart rate monitor, accelerometer, and gyroscope, and can track activities like running, cycling, swimming, and more.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          )
        ],
      )),
      bottomNavigationBar: Container(
        height: 70,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width / 1.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent),
                child: Text(
                  "Add To Cart",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
              InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFD4ECF7)),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,color: Colors.redAccent,size: 30,)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
