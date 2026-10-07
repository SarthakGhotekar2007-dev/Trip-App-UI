import 'package:flutter/material.dart';
import 'package:trip_app/Screens/change_team_member_screen.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeTeamMemberScreen(),));
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(color: Color.fromARGB(255, 132, 215, 60)),
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
                                            148,
                                            227,
                                            79,
                                          ),
                                          foregroundColor: const Color.fromARGB(
                                            255,
                                            255,
                                            255,
                                            255,
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
                                    SizedBox(
                                      height: 33,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(
                                            255,
                                            217,
                                            162,
                                            153,
                                          ),
                                          minimumSize: Size.zero,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          foregroundColor: Color(0xFFCB1010),
                                        ),
                                        child: Text(
                                          "High",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
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
                                        onPressed: () {},
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
                                  foregroundColor: Colors.grey.shade400,
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
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),

                            SizedBox(width: 4),

                            SizedBox(
                              height: 30,
                              child: ElevatedButton(
                                onPressed: () {},
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
                      Row(
                        children: [
                          Container(
                            height: 13,
                            width: 13,
                            color: Colors.redAccent,
                          ),

                          SizedBox(width: 2),

                          Text("High", style: TextStyle(fontSize: 13)),

                          SizedBox(width: 15),

                          Container(
                            height: 13,
                            width: 13,
                            color: Colors.deepPurpleAccent,
                          ),

                          SizedBox(width: 2),

                          Text("Medium", style: TextStyle(fontSize: 13)),

                          SizedBox(width: 15),

                          Container(height: 13, width: 13, color: Colors.amber),

                          SizedBox(width: 2),

                          Text("Low", style: TextStyle(fontSize: 13)),

                          SizedBox(width: 15),

                          Container(height: 13, width: 13, color: Colors.grey),

                          SizedBox(width: 2),

                          Text("Completed", style: TextStyle(fontSize: 13)),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(color: Color(0xFFF8EDED)),
                            child: Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 70,
                                  color: Colors.redAccent,
                                ),

                                SizedBox(width: 8),

                                Expanded(
                                  child: Text(
                                    "Working on design of People Management to give to Utkarsh and team",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            height: 60,
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(color: Color(0xFFE4DDF2)),
                            child: Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 70,
                                  color: Colors.deepPurpleAccent,
                                ),

                                SizedBox(width: 8),

                                Expanded(
                                  child: Text(
                                    "Working on design of People Management to give to Utkarsh and team",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            height: 60,
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(color: Color(0xFFF2F1D7)),
                            child: Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 70,
                                  color: Colors.amber,
                                ),

                                SizedBox(width: 8),

                                Expanded(
                                  child: Text(
                                    "Working on design of People Management to give to Utkarsh and team",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            height: 60,
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(color: Color(0xFFE0E0E0)),
                            child: Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 70,
                                  color: Colors.grey,
                                ),

                                SizedBox(width: 8),

                                Expanded(
                                  child: Text(
                                    "Working on design of People Management to give to Utkarsh and team",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
            icon: Image.asset("assets/svg icons/Icon.png", height: 27),
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
            icon: Image.asset("assets/svg icons/Rectangle 202.png", height: 36),
            label: " ",
          ),
        ],
      ),
    );
  }
}
