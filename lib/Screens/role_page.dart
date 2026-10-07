import 'package:flutter/material.dart';
import 'package:trip_app/Screens/request_screen.dart';

class RolePage extends StatefulWidget {
  const RolePage({super.key});

  @override
  State<RolePage> createState() => _RolePageState();
}

class _RolePageState extends State<RolePage> {
  
  final List<String> role = [
    "Administrator",
    "Security Guard",
    "Cook",
    "IT Staff",
    "Student",
    "Housekeeping",
  ];
  String selectedRole = "Administrator";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 183, 182, 182),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 35),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Welcome"),
                    ),
                    Text(
                      "Raosaheb Ghuge",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Divider(
                        color: const Color.fromARGB(255, 138, 138, 138),
                      ),
                    ),

                    Text(
                      "the baap company",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Software Company"),
                    SizedBox(height: 20),
                    Text(
                      "Choose your role to get started",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Divider(
                        color: const Color.fromARGB(255, 138, 138, 138),
                      ),
                    ),
                    SizedBox(height: 20),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: role.length,
                      itemBuilder: (context, index) {
                        final currentRole = role[index];

                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedRole = currentRole;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: Row(
                              children: [
                                if (selectedRole == currentRole)
                                  const Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Icon(Icons.check_circle),
                                  ),

                                if (selectedRole != currentRole)
                                  const SizedBox(width: 28),

                                Text(
                                  currentRole,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: selectedRole == currentRole
                                        ? Colors.black
                                        : Color.fromARGB(255, 115, 115, 115),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RequestScreen(),
                                  ),
                                );
                              },

                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(
                                  255,
                                  47,
                                  48,
                                  48,
                                ),
                                foregroundColor: Colors.white,
                              ),
                              child: Text("Request Access"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
                        color: const Color.fromARGB(255, 123, 121, 121),
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
