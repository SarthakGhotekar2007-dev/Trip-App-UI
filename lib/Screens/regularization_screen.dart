import 'package:flutter/material.dart';
import 'package:trip_app/Screens/approvals_screen.dart';
import 'package:trip_app/Screens/tasks_screen.dart';

class RegularizationScreen extends StatefulWidget {
  const RegularizationScreen({super.key});

  @override
  State<RegularizationScreen> createState() => _RegularizationScreenState();
}

class _RegularizationScreenState extends State<RegularizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 183, 182, 182),

      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text("Welcome"),

                          Text(
                            "Raosaheb Ghuge",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Spacer(),

                    Image.asset("assets/images/notification.png", height: 25),

                    SizedBox(width: 10),

                    Icon(Icons.more_vert),

                    SizedBox(width: 10),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20),

                  child: Text("Administrator, the baap company"),
                ),

                Padding(
                  padding: const EdgeInsets.all(20),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Attendance Regularization",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
  
                      Divider(height: 30,color: Colors.black,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "No recent leave request",
                            style: TextStyle(fontSize: 15, color: const Color.fromARGB(255, 50, 50, 50)),
                          ),
                        ],
                      ),

                      SizedBox(height: 12),

                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),

                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 196, 196, 196),
                          borderRadius: BorderRadius.circular(8),
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Name
                            Row(
                              children: [
                                Text(
                                  "Isha Patil, ",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                Text(
                                  "Programmer",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 3),

                

                            Row(
                              children: [
                                Text(
                                  "11 Dec, 2022",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                  Spacer(),

                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),

                                  decoration: BoxDecoration(
                                    color: const Color(0xffc8f3dc),
                                    borderRadius: BorderRadius.circular(15),
                                  ),

                                  child: Text(
                                    "Approved",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 2),
                            Text(
                              "Regularized",
                              style: TextStyle(
                                fontSize: 12,
                                color: const Color.fromARGB(225, 0, 0, 0),
                                fontWeight: FontWeight.bold
                              ),
                            ),

                 Divider(height: 30,color: const Color.fromARGB(255, 38, 38, 38),),
                 Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("IN",style: TextStyle(color: const Color.fromARGB(255, 94, 94, 94),fontSize: 13),),
                        Text("11:00 AM",style: TextStyle(color: const Color.fromARGB(255, 94, 94, 94),fontSize: 13),)
                      ],
                    ),
                    SizedBox(width: 20,),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("OUT",style: TextStyle(color: const Color.fromARGB(255, 94, 94, 94),fontSize: 13),),
                        Text("12:00 AM",style: TextStyle(color: const Color.fromARGB(255, 94, 94, 94),fontSize: 13),)
                      ],
                    ),
                    SizedBox(width: 20,),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total Time",style: TextStyle(color: const Color.fromARGB(255, 94, 94, 94),fontSize: 13),),
                        Text("02:20",style: TextStyle(color: const Color.fromARGB(255, 94, 94, 94),fontSize: 13),)
                      ],
                    )
                  ],
                 ),
                 SizedBox(height: 10),
                            Text(
                              "Reason",
                              style: TextStyle(
                                fontSize: 12,
                               color: const Color.fromARGB(225, 0, 0, 0),
                                fontWeight: FontWeight.bold
                              ),
                            ),

                 Divider(height: 10,color: const Color.fromARGB(255, 38, 38, 38),),
                 Text("I had forgotten my card at home. But today I have got it, please update my atteddance…",style: TextStyle(fontSize: 12, color: const Color.fromARGB(255, 94, 94, 94)),),
                            SizedBox(height: 15),

                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ApprovalsScreen(),));
                        
                                  },
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => TasksScreen(),));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 5,
                                      ),
                                    
                                      decoration: BoxDecoration(
                                        color: Colors.black87,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    
                                      child: Text(
                                        "Approve",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(width: 6),

                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 5,
                                  ),

                                  decoration: BoxDecoration(
                                    color: Color(0xffd95b5b),
                                    borderRadius: BorderRadius.circular(15),
                                  ),

                                  child: Text(
                                    "Reject",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 198, 196, 196),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/svg icons/Rectangle 200.png", height: 28),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/svg icons/Rectangle 195.png", height: 30),
            label: " ",
          ),

          BottomNavigationBarItem(
            icon: Image.asset("assets/svg icons/Rectangle 202.png", height: 30),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/svg icons/Rectangle 199.png", height: 36),
            label: " ",
          ),
        ],
      ),
    );
  }
}