import 'package:flutter/material.dart';
import 'package:trip_app/Screens/change_team_member%20_1.dart';
import 'package:trip_app/Screens/welcome_screen.dart';

class ChangeTeamMemberScreen extends StatefulWidget {
  const ChangeTeamMemberScreen({super.key});

  @override
  State<ChangeTeamMemberScreen> createState() => _ChangeTeamMemberScreenState();
}

class _ChangeTeamMemberScreenState extends State<ChangeTeamMemberScreen> {
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
                  padding: const EdgeInsets.only(left: 20),

                  child: Text("Administrator, Food Factory"),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Current Task",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Divider(color: Colors.black38),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WelcomeScreen(),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  "Working on design of People Management to give to Utkarsh and team",
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(height: 14),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Start Time",
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                              255,
                                              94,
                                              94,
                                              94,
                                            ),
                                            fontSize: 13,
                                          ),
                                        ),
                                        Text(
                                          "12:00 AM",
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                              255,
                                              94,
                                              94,
                                              94,
                                            ),
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Total time",
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                              255,
                                              94,
                                              94,
                                              94,
                                            ),
                                            fontSize: 13,
                                          ),
                                        ),
                                        Text(
                                          "2:20",
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                              255,
                                              94,
                                              94,
                                              94,
                                            ),
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    SizedBox(
                                      height: 35,
                                      width: 125,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(
                                            255,
                                            88,
                                            124,
                                            214,
                                          ),
                                          foregroundColor: const Color.fromARGB(
                                            255,
                                            30,
                                            19,
                                            183,
                                          ),
                                        ),
                                        child: Text(
                                          "In Progress",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Text(
                                      "Sick Leave",
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                          255,
                                          77,
                                          76,
                                          76,
                                        ),
                                        fontSize: 14,
                                      ),
                                    ),
                                    Spacer(),
                                    SizedBox(
                                      height: 33,
                                      child: OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          minimumSize: Size.zero,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          foregroundColor: const Color.fromARGB(
                                            255,
                                            0,
                                            0,
                                            0,
                                          ),
                                        ),
                                        child: Text(
                                          "Break",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    SizedBox(
                                      height: 33,
                                      child: ElevatedButton(
                                        onPressed: () {
                          
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeTeamMember(),));
                        
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xFF2B2A2A),
                                          minimumSize: Size.zero,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          foregroundColor: const Color.fromARGB(
                                            255,
                                            255,
                                            255,
                                            255,
                                          ),
                                        ),
                                        child: Text(
                                          "Done",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
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
                      ),

                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Text(
                              "All Tasks",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Spacer(),

                            SizedBox(
                              height: 30,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 14,
                                  ),
                                  minimumSize: Size.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  foregroundColor: Colors.black,
                                  side: BorderSide(color: Colors.black54),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                ),
                                child: Text(
                                  "Today",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),

                            SizedBox(width: 4),

                            SizedBox(
                              height: 30,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  minimumSize: Size.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  foregroundColor: const Color.fromARGB(
                                    255,
                                    40,
                                    39,
                                    39,
                                  ),
                                  side: BorderSide(color: Colors.grey.shade300),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                ),
                                child: Text(
                                  "Yest'y",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),

                            SizedBox(width: 4),

                            SizedBox(
                              height: 30,
                              width: 32,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size.zero,
                                  side: BorderSide(color: Colors.grey.shade300),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: Icon(
                                  Icons.filter_alt_outlined,
                                  size: 17,
                                  color: const Color.fromARGB(255, 41, 41, 41),
                                ),
                              ),
                            ),

                            SizedBox(width: 4),

                            SizedBox(
                              height: 30,
                              child: ElevatedButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        height: 500,
                                        padding: EdgeInsets.all(15),

                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Select your team Member",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),

                                            Divider(),

                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images/raosaheb.jpg",
                                                  height: 50,
                                                  width: 45,
                                                  fit: BoxFit.cover,
                                                ),

                                                SizedBox(width: 8),

                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Utkarsh Nagre",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),

                                                    Text(
                                                      "Flutter Developer",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 11,
                                                      ),
                                                    ),

                                                    Text(
                                                      "Information Technology",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),

                                            const Divider(),

                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images/kamlesh.jpg",
                                                  height: 50,
                                                  width: 45,
                                                  fit: BoxFit.cover,
                                                ),

                                                SizedBox(width: 8),

                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Vaibhav Bade",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),

                                                    Text(
                                                      "Flutter Developer",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 11,
                                                      ),
                                                    ),

                                                    Text(
                                                      "Information Technology",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),

                                            Divider(),

                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images/girl.jpg",
                                                  height: 50,
                                                  width: 45,
                                                  fit: BoxFit.cover,
                                                ),

                                                SizedBox(width: 8),

                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Pratiksha Wale",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),

                                                    Text(
                                                      "Angular Developer",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 11,
                                                      ),
                                                    ),

                                                    Text(
                                                      "Agriculture",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },

                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF292929),
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                  ),
                                  minimumSize: Size.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                ),

                                child: Text(
                                  "Add",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
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
