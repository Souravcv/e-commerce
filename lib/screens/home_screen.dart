import 'package:e_comores/screens/page_one.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedintext = 0;
  static List<Widget> _widgetOption = <Widget>[
    Home(),
    Container(),
    Container(),
    Container(),
  ];
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOption.elementAt(_selectedintext),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.1),

          )
          ]
        ),
        child: SafeArea(
          child:Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: Colors.white,
            iconSize: 24,
            
            padding: EdgeInsets.symmetric(horizontal:20,vertical: 12),
            duration: const Duration(microseconds: 400),
            tabBackgroundColor: Colors.redAccent,

            tabs: const[
              
            GButton(icon:Icons.home_sharp,text: 'Home',),
            GButton(icon:Icons.shopping_bag_outlined,text: 'Cart',),
            GButton(icon:Icons.bookmark_add_rounded,text: 'Wishlist',),
            GButton(icon:Icons.account_circle_rounded,text: 'Account',),


          ],
          selectedIndex: _selectedintext,
          onTabChange: (intex){
            setState(() {
              _selectedintext = intex;
            });
          },
          ),
          ),
          

          ),
      ),

      
    );
  }
}


 