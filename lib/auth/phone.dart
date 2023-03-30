import 'package:e_comores/auth/otp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Myphone extends StatefulWidget {
  const Myphone({super.key});
  static String varify = "";

  @override
  State<Myphone> createState() => _MyphoneState();
}

class _MyphoneState extends State<Myphone> {
  TextEditingController countrycode = TextEditingController();
  var phone="";
  @override
  void initState() {
    // TODO: implement initState
    countrycode.text = "+91";
    super.initState();
  }

  @override
  //pinput

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Phone Verification",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 40,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 6),
                          decoration:const BoxDecoration(
                            color: Colors.black,

                          ),
                          child: Text("+91",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    const  Text(
                        '|',
                        style: TextStyle(fontSize: 33, color: Colors.black),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          onChanged: (value){
                            phone=value;
                          },
                          keyboardType: TextInputType.phone,
                          decoration:const InputDecoration(
                              border: InputBorder.none, hintText: "Phone"),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
               
           ] ),
          ),
        ),
      ),
    );
  }
}
