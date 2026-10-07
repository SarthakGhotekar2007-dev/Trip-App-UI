import 'package:flutter/material.dart';
import 'package:trip_app/Screens/organization_screen.dart';
import 'package:trip_app/Screens/welcome_screen.dart';

class VisitorListScreen extends StatefulWidget {
  const VisitorListScreen({super.key});

  @override
  State<VisitorListScreen> createState() => _VisitorListScreenState();
}

class _VisitorListScreenState extends State<VisitorListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  padding: const EdgeInsets.all(10),

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children:[
                            Text("Visitor List",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Spacer(),
                            Text("Today",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                            Icon(Icons.date_range_rounded),
                            Icon(Icons.add_box,color: Colors.green,)
                          ]
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OrganizationScreen(),));
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                        
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadiusGeometry.circular(
                                        10,
                                      ),
                                      child: Container(
                                        height: 100,
                                        width: 60,
                                        child: Image.asset(
                                          "assets/images/girl.jpg",
                                        ),
                                      ),
                                    ),
                        
                                    SizedBox(width: 10),
                        
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Alisha Deshmukh",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                        
                                          SizedBox(height: 5),
                        
                                          Row(
                                            children: [
                                              Icon(Icons.phone, size: 16),
                                              SizedBox(width: 5),
                                              Text("9839838847"),
                                              Spacer(),
                                              Text(
                                                "12 Dec, 2023",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                        
                                          SizedBox(height: 5),
                        
                                          Row(
                                            children: [
                                              Icon(Icons.location_on, size: 16),
                                              SizedBox(width: 5),
                                              Text("Akola, MH"),
                                              Spacer(),
                                              Text(
                                                "09:00 AM",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                        
                                Divider(),
                        
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Meeting with",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                        
                                        SizedBox(height: 4),
                        
                                        Text(
                                          "Shrikant Dubey",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                        
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Allowed By",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                        
                                        SizedBox(height: 4),
                        
                                        Text(
                                          "Dilip Katkade",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen(),));
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                        
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadiusGeometry.circular(
                                        20,
                                      ),
                                      child: Container(
                                         height: 80,
                                        width: 70,
                                        
                                        child: Image.asset(
                                          "assets/images/satish.jpg",
                                        ),
                                      ),
                                    ),
                        
                                    SizedBox(width: 10),
                        
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Suresh Dani",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                        
                                          SizedBox(height: 5),
                        
                                          Row(
                                            children: [
                                              Icon(Icons.phone, size: 16),
                                              SizedBox(width: 5),
                                              Text("98398838847"),
                                              Spacer(),
                                              Text(
                                                "12 Dec, 2023",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                        
                                          SizedBox(height: 5),
                        
                                          Row(
                                            children: [
                                              Icon(Icons.location_on, size: 16),
                                              SizedBox(width: 5),
                                              Text("Jalna, MH"),
                                              Spacer(),
                                              Text(
                                                "08:00 AM",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                        
                                Divider(),
                        
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Meeting with",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                        
                                        SizedBox(height: 4),
                        
                                        Text(
                                          "Deepak Nagare",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                        
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Allowed By",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                        
                                        SizedBox(height: 4),
                        
                                        Text(
                                          "Dilip Katkade",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
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
            icon: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Icon(Icons.person, size: 30),
              ),
            ),
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
