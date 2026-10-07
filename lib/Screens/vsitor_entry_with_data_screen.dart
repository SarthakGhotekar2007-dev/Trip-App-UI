import 'package:flutter/material.dart';
import 'package:trip_app/Screens/gate_pass_screen.dart';

class VisitorDataScreen extends StatefulWidget {
  const VisitorDataScreen({super.key});

  @override
  State<VisitorDataScreen> createState() => _VisitorDataScreenState();
}

class _VisitorDataScreenState extends State<VisitorDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 181, 180, 180),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
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

              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 110,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/images/girl.jpg",
                            height: 135,
                            width: 110,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Recapture"),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 203, 203, 203),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Alisha Deshmukh",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 203, 203, 203),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "98398838847",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 40,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 203, 203, 203),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Akole, MH", style: TextStyle(fontSize: 13)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 203, 203, 203),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: AlignmentGeometry.topCenter,
                        child: Text(
                          "Pay the fees for BCA second year",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 203, 203, 203),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Shrikant Dubey",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle, color: Color(0xFF05AAA9), size: 30),
                  SizedBox(width: 5),
                  Text(
                    "Approved",
                    style: TextStyle(
                      color: Color(0xFF05AAA9),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "12 Dec, 2023",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "09:00 AM",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => GatePassScreen(),));
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
                        "Print",
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
                    
                          Navigator.push(context, MaterialPageRoute(builder: (context) => GatePassScreen(),));
                      
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
