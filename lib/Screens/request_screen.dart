import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:trip_app/Screens/my_attendance_screen.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 183, 182, 182),

      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),

        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35, top: 20),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("Welcome"),

                      Text(
                        "Raosaheb Ghuge",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Divider(color: Color.fromARGB(255, 138, 138, 138)),
                    ],
                  ),
                ),

                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Container(
                          color: const Color.fromARGB(255, 183, 182, 182) ,
                          child: Lottie.asset('assets/images/Success check.json',height: 150,)),

                        SizedBox(height: 10),

                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyAttendanceScreen(),));
                          },
                          child: Text(
                            "Your request is sent to the administrator.",
                            textAlign: TextAlign.center,
                          ),
                        ),

                        Text("Check back again.", textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 20),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Divider(color: Color.fromRGBO(103, 101, 101, 1)),

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
                ),
              ],
            ),

            Positioned(
              top: -75,
              right: -75,

              child: Image.asset(
                "assets/images/dot.png",
                width: 220,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
