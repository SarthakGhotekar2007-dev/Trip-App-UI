import 'package:flutter/material.dart';
import 'package:trip_app/Screens/leaves_screen.dart';

class HierarchyScreen extends StatefulWidget {
  const HierarchyScreen({super.key});

  @override
  State<HierarchyScreen> createState() => _HierarchyScreenState();
}

class _HierarchyScreenState extends State<HierarchyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Hierarchy",
                    style: TextStyle(
                      color: Color.fromARGB(255, 75, 75, 75),
                      fontSize: 12,
                    ),
                  ),

                  Spacer(),

                  Icon(Icons.cancel, size: 20),
                ],
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 2,
                  width: 40,
                  color: const Color.fromARGB(255, 53, 53, 53),
                ),
              ),

              SizedBox(height: 15),

              Text(
                "Sujata Shelke",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),

              SizedBox(height: 3),

              Text(
                "HR Manager",
                style: TextStyle(
                  color: const Color.fromARGB(255, 53, 53, 53),
                  fontSize: 11,
                ),
              ),

              SizedBox(height: 8),

              ClipOval(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LeavesScreen()),
                    );
                  },
                  child: Image.asset(
                    "assets/images/girl.jpg",
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container(height: 40, width: 2, color: Colors.white),

              ClipOval(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LeavesScreen()),
                    );
                  },
                  child: Image.asset(
                    "assets/images/sushma.jpg",
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 5),

              Text(
                "Sushma Avhad (You)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),

              SizedBox(height: 3),

              Text(
                "HR Executive",
                style: TextStyle(
                  color: const Color.fromARGB(255, 53, 53, 53),
                  fontSize: 11,
                ),
              ),

              SizedBox(height: 20),

              Text(
                "Your team",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),

              SizedBox(height: 18),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ClipOval(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LeavesScreen(),
                              ),
                            );
                          },
                          child: Image.asset(
                            "assets/images/raosaheb.jpg",
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "Raosaheb S",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),

                      Text(
                        "HR Assistant",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 53, 53, 53),
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      ClipOval(
                        child:  InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LeavesScreen(),
                              ),
                            );
                          },
                          child: Image.asset(
                            "assets/images/raosaheb.jpg",
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "Kamlesh G",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),

                      const Text(
                        "Office Boy",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 53, 53, 53),
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      ClipOval(
                        child:  InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LeavesScreen(),
                              ),
                            );
                          },
                          child: Image.asset(
                            "assets/images/raosaheb.jpg",
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "Satish Bhave",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),

                      Text(
                        "HR Assistance",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 53, 53, 53),
                          fontSize: 11,
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
    );
  }
}
