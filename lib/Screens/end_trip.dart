import 'package:flutter/material.dart';
import 'package:trip_app/Screens/regularization_screen.dart';

class EndTrip extends StatefulWidget {
  const EndTrip({super.key});

  @override
  State<EndTrip> createState() => _EndTripState();
}

class _EndTripState extends State<EndTrip> {
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "12 May 2023",
                            style: TextStyle(
                              fontSize: 18,
                              color: const Color.fromARGB(255, 29, 29, 29),
                            ),
                          ),

                          Text(
                            "Trip to Nandur Shingote",
                            style: TextStyle(
                              fontSize: 20,
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Start Time"),
                        SizedBox(height: 8),
                        Text(
                          "11:08:19 AM",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 50),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("End time"),
                        SizedBox(height: 8),
                        Text(
                          "-",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Add more locations",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 350,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Center(
                          child: Text("Map placeholder",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Km Travelled"),
                              SizedBox(height: 4),
                              Text(
                                "12 Km",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 50),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Total Time"),
                              SizedBox(height: 4),
                              Text(
                                "2 Hours 12 Min",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => RegularizationScreen(),));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              minimumSize: Size(0, 32),
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            child: Text(
                              "Add Dealer",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),

                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => RegularizationScreen(),));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              minimumSize: Size(0, 32),
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            child: Text(
                              "Take Order",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),

                          OutlinedButton(
                            onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => RegularizationScreen(),));
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Color.fromARGB(
                                255,
                                169,
                                168,
                                168,
                              ),
                              foregroundColor: Colors.black,
                              minimumSize: Size(0, 32),
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              side: BorderSide(color: Colors.grey, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            child: Text(
                              "End Trip",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
