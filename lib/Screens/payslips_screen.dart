import 'package:flutter/material.dart';
import 'package:trip_app/Screens/leave_approval%20_screen.dart';

class PayslipsScreen extends StatefulWidget {
  const PayslipsScreen({super.key});

  @override
  State<PayslipsScreen> createState() => _PayslipsScreenState();
}

class _PayslipsScreenState extends State<PayslipsScreen> {
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

                  child: Text("Administrator, the baap company"),
                ),

                Padding(
                  padding: const EdgeInsets.all(20),

                  child: Column(
                    children: [
                    

                      Padding(
                        padding: const EdgeInsets.only(left: 10),

                        child: Row(
                          children: [
                            Text(
                              "Payslips",

                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            SizedBox(
                              height: 33,
                              child: ElevatedButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LeaveApprovalScreen(),));
                              }, 
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 42, 32, 28),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(15)
                                )
                              ),
                              child: Text("Tax Declarations",style: TextStyle(color: Colors.white,fontSize: 13),)),
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
                              "No payslips found",

                              style: TextStyle(fontSize: 14,color: const Color.fromARGB(255, 81, 81, 81)),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LeaveApprovalScreen(),));
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                        
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                        
                            borderRadius: BorderRadius.circular(10),
                          ),
                        
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text("March, 2022",style: TextStyle(color: const Color.fromARGB(255, 84, 84, 84),fontSize:11 ),),
                            Text("Rs. 102,00,000",style: TextStyle(fontSize:14,fontWeight: FontWeight.w600),),
                            Row(
                              children: [
                                Text("Gross Rs. 110, 00, 000",style: TextStyle(color: const Color.fromARGB(255, 84, 84, 84),fontSize:12 ),),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(255, 210, 210, 210)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 3),
                                    child: Text("Download",style: TextStyle(color: const Color.fromARGB(255, 27, 26, 26),fontSize:11 ),),
                                  ),
                                )
                              ],
                            )
                          ],)
                        ),
                      ),

                      SizedBox(height: 10),
   InkWell(
    onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LeaveApprovalScreen(),));
                        },
     child: Container(
                          padding: EdgeInsets.all(12),
     
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
     
                            borderRadius: BorderRadius.circular(10),
                          ),
     
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text("March, 2022",style: TextStyle(color: const Color.fromARGB(255, 84, 84, 84),fontSize:11 ),),
                            Text("Rs. 102,00,000",style: TextStyle(fontSize:14,fontWeight: FontWeight.w600),),
                            Row(
                              children: [
                                Text("Gross Rs. 110, 00, 000",style: TextStyle(color: const Color.fromARGB(255, 84, 84, 84),fontSize:12 ),),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(255, 210, 210, 210)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 3),
                                    child: Text("Download",style: TextStyle(color: const Color.fromARGB(255, 27, 26, 26),fontSize:11 ),),
                                  ),
                                )
                              ],
                            )
                          ],)
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