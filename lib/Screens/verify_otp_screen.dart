import 'package:flutter/material.dart';
import 'package:trip_app/Screens/route_screen.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  Widget otpBox(String number) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 45,
      width: 40,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 195, 195, 195),
        border: Border.all(color: Colors.grey),
      ),
      child: Center(child: Text(number, style: TextStyle(fontSize: 16))),
    );
  }

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
                            style: TextStyle(
                              fontSize: 10,
                              color: const Color.fromARGB(255, 69, 69, 69),
                            ),
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
                      Text(
                        "Enter OTP",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          otpBox("8"),
                          otpBox("7"),
                          otpBox("1"),
                          otpBox("8"),
                          otpBox("8"),
                          otpBox("8"),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => RouteScreen(),));
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                height: 110,
                                decoration: BoxDecoration(color: Colors.red[200]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.error_outline,
                                          color: Colors.red,
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          "Try again !",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 13,
                                          ),
                                        ),
                                        Spacer(),
                                        Icon(Icons.cancel),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "We could not verify this OTP",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "Try again !",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
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
