import 'package:flutter/material.dart';
import 'package:trip_app/Screens/payslips_screen.dart';

class LeavesScreen extends StatefulWidget {
  const LeavesScreen({super.key});

  @override
  State<LeavesScreen> createState() => _LeavesScreenState();
}

class _LeavesScreenState extends State<LeavesScreen> {
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
                      padding: const EdgeInsets.only(top: 20, left: 30),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text("Welcome"),

                          Text(
                            "Jeff Walker",
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
                  padding: const EdgeInsets.only(left: 30),

                  child: Text("Administrator, Food Factory"),
                ),

                Padding(
                  padding: const EdgeInsets.all(20),

                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 70,
                            height: 60,
                            padding: EdgeInsets.all(10),

                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10),
                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "5",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                Text(
                                  "Sick (10)",
                                  style: TextStyle(fontSize: 11),
                                ),
                              ],
                            ),
                          ),
SizedBox(width: 10,),
                          Container(
                            width: 80,
                            height: 60,
                            padding: EdgeInsets.all(10),

                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10),
                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "10",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                Text(
                                  "Casual (10)",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
SizedBox(width: 10,),
                          Container(
                            width:70,
                            height: 60,
                            padding: EdgeInsets.all(10),

                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10),
                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "2",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                Text("Special", style: TextStyle(fontSize: 11)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 35),

                      Padding(
                        padding: const EdgeInsets.only(left: 10),

                        child: Row(
                          children: [
                            Text(
                              "Leave Request",

                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            SizedBox(
                              height: 33,
                              child: ElevatedButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PayslipsScreen(),));
                              }, 
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 42, 32, 28),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(15)
                                )
                              ),
                              child: Text("Apply",style: TextStyle(color: Colors.white),)),
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: 3),

                      Padding(
                        padding: const EdgeInsets.only(left: 10),

                        child: Divider(),
                      ),

                      SizedBox(height: 4),
                     Padding(
                        padding: const EdgeInsets.only(left: 10),

                        child: Row(
                          children: [
                            Text(
                              "No recent leave request",

                              style: TextStyle(fontSize: 14,color: const Color.fromARGB(255, 81, 81, 81)),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.all(12),

                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,

                          borderRadius: BorderRadius.circular(10),
                        ),

                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text("2 days",style: TextStyle(color: const Color.fromARGB(255, 84, 84, 84),fontSize:11 ),),
                          Text("28 Dec, 22 - 29 Dec, 22",style: TextStyle(fontSize:14,fontWeight: FontWeight.w600),),
                          Row(
                            children: [
                              Text("Sick Leave",style: TextStyle(color: const Color.fromARGB(255, 84, 84, 84),fontSize:12 ),),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 145, 247, 198)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 3),
                                  child: Text("Approved",style: TextStyle(color: const Color.fromARGB(255, 22, 186, 25),fontSize:11 ),),
                                ),
                              )
                            ],
                          )
                        ],)
                      ),

                      SizedBox(height: 10),
  Container(
                        padding: EdgeInsets.all(12),

                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,

                          borderRadius: BorderRadius.circular(10),
                        ),

                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text("1 days",style: TextStyle(color: const Color.fromARGB(255, 84, 84, 84),fontSize:11 ),),
                          Text("01 Jan, 23",style: TextStyle(fontSize:14,fontWeight: FontWeight.w600),),
                          Row(
                            children: [
                              Text("Casual Leave",style: TextStyle(color: const Color.fromARGB(255, 84, 84, 84),fontSize:12 ),),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 246, 166, 157)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 3),
                                  child: Text("Rejected",style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize:11 ),),
                                ),
                              )
                            ],
                          )
                        ],)
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
            icon: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PayslipsScreen(),));
              },
              child: Image.asset("assets/svg icons/Rectangle 202.png", height: 30)),
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