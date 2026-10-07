import 'package:flutter/material.dart';
import 'package:trip_app/Screens/otp_screen.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 183, 182, 182),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 25),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage(
                            "assets/images/baaplogo.jpg",
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                  
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "the baap company",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  
                          Text(
                            "Software Company",
                            style: TextStyle(fontSize: 10, color: const Color.fromARGB(255, 69, 69, 69)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen(),));
                        },
                        child: Text("Get started by logging in your account",style: TextStyle(fontSize: 12,))),
                      SizedBox(height: 12,),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter your phone no",
                          hintStyle: TextStyle(
                            fontSize: 13
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(right: 20),
                      child: Divider(color: Color.fromRGBO(103, 101, 101, 1)),
                    ),

                    Text(
                      "Powered by",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 123, 121, 121),
                      ),
                    ),

                    Text(
                      "the baap company",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Positioned(
              top: -75,
              right: -75,
              child: Image.asset(
                "assets/images/dot.png",
                width: 260,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
