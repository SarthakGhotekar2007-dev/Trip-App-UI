import 'package:flutter/material.dart';
import 'package:trip_app/Screens/visitor_list_screen.dart';

class GatePassScreen extends StatefulWidget {
  const GatePassScreen({super.key});

  @override
  State<GatePassScreen> createState() => _GatePassScreenState();
}

class _GatePassScreenState extends State<GatePassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 181, 180, 180),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
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

                  Spacer(),

                  Image.asset("assets/images/notification.png", height: 25),

                  SizedBox(width: 10),

                  Icon(Icons.more_vert),

                  SizedBox(width: 10),
                ],
              ),
              SizedBox(height: 5),

              Text("Administrator, Food Factory"),

              SizedBox(height: 60),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      "assets/images/girl.jpg",
                      height: 135,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),

                   SizedBox(height: 8),

                   Text(
                    "Alisha Deshmukh",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                   SizedBox(height: 5),

                  Row(
                    children: const [
                      Icon(Icons.phone, size: 15, color: Colors.black),
                      SizedBox(width: 5),
                      Text(
                        "9839883847",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ],
                  ),

                   SizedBox(height: 4),

                  Row(
                    children: const [
                      Icon(Icons.location_on, size: 16, color: Colors.black),
                      SizedBox(width: 5),
                      Text(
                        "Akole, MH",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ],
                  ),

                  SizedBox(height: 12),

                   Text(
                    "Date & Time",
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),

                   SizedBox(height: 20),

                   Text(
                    "Purpose",
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),

                   SizedBox(height: 3),

                   Text(
                    "Pay the fees for BCA second year",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),

                   SizedBox(height: 15),

                   Text(
                    "Meeting with",
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),

                   SizedBox(height: 3),

                   Text(
                    "Shrikant Dubey",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),

                   SizedBox(height: 15),

                   Text(
                    "Rejected Reason",
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),

                   SizedBox(height: 3),

                   Text(
                    "I am not free at the moment, come after two or\n"
                    "three days, we can talk in the free time.",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      height: 1.3,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => VisitorListScreen(),));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF6ABC8D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 22,
                        vertical: 10,
                      ),
                      child: Text(
                        "Allow",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => VisitorListScreen(),));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFC9834),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 19,
                        vertical: 10,
                      ),
                      child: Text(
                        "Reject",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
