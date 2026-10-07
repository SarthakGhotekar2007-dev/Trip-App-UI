import 'package:flutter/material.dart';
import 'package:trip_app/Screens/leave_applications_screen.dart';

class RegularizeScreen extends StatefulWidget {
  const RegularizeScreen({super.key});

  @override
  State<RegularizeScreen> createState() => _RegularizeScreenState();
}

class _RegularizeScreenState extends State<RegularizeScreen> {
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
                      Container(
                        width: double.infinity,
                        height: 250,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 220, 220, 220),
                        ),

                        child: Theme(
                          data: Theme.of(context).copyWith(
                            textTheme: Theme.of(context).textTheme.copyWith(
                              bodyMedium: TextStyle(fontSize: 10),
                            ),
                          ),

                          child: CalendarDatePicker(
                            initialDate: DateTime.now(),

                            firstDate: DateTime(2010),

                            lastDate: DateTime(2030),

                            onDateChanged: (date) {
                              print(date);
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 18),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 100,
                            height: 75,
                            padding: EdgeInsets.all(10),

                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10),
                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "23",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                Text(
                                  "Present Days",
                                  style: TextStyle(fontSize: 11),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: 100,
                            height: 75,
                            padding: EdgeInsets.all(10),

                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10),
                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "3",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                Text(
                                  "Absent Days",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: 100,
                            height: 75,
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
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                Text("Leaves", style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 13),

                      Padding(
                        padding: const EdgeInsets.only(left: 10),

                        child: Row(
                          children: [
                            Text(
                              "Time entry",

                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 6),

                      Padding(
                        padding: const EdgeInsets.only(left: 10),

                        child: Divider(),
                      ),

                      SizedBox(height: 8),

                      Container(
                        padding: EdgeInsets.all(12),

                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,

                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text(
                                  "Entry",

                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),

                                SizedBox(height: 5),

                                Text(
                                  "11:30 AM",

                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text(
                                  "Exit",

                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),

                                SizedBox(height: 5),

                                Text(
                                  "12:00 PM",

                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text(
                                  "Total time",

                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),

                                SizedBox(height: 5),

                                Text(
                                  "3 hr 10 min",

                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 6),

                      Padding(
                        padding: const EdgeInsets.only(left: 10),

                        child: Row(
                          children: [
                            Text(
                              "Time entry missing",

                              style: TextStyle(
                                fontWeight: FontWeight.w600,

                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 6),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,

                                backgroundColor: Colors.transparent,

                                builder: (context) {
                                  return Container(
                                    height: 300,

                                    padding: EdgeInsets.all(22),

                                    decoration: BoxDecoration(
                                      color: Colors.white,

                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),

                                        topRight: Radius.circular(25),
                                      ),
                                    ),

                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,

                                      children: [
                                        Text(
                                          "Attendance Regularization",

                                          style: TextStyle(
                                            fontSize: 14,

                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        SizedBox(height: 18),

                                        Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,

                                                children: [
                                                  Text(
                                                    "Start Time",

                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),

                                                  SizedBox(height: 8),

                                                  Container(
                                                    height: 40,

                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 10,
                                                        ),

                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors
                                                            .grey
                                                            .shade300,
                                                      ),

                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            6,
                                                          ),
                                                    ),

                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "09:00",

                                                          style: TextStyle(
                                                            fontSize: 12,
                                                          ),
                                                        ),

                                                        SizedBox(width: 8),

                                                        Text(
                                                          "AM",

                                                          style: TextStyle(
                                                            fontSize: 12,

                                                            color: Colors.green,
                                                          ),
                                                        ),

                                                        SizedBox(width: 5),

                                                        Text(
                                                          "PM",

                                                          style: TextStyle(
                                                            fontSize: 12,

                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            SizedBox(width: 15),

                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,

                                                children: [
                                                  Text(
                                                    "End Time",

                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),

                                                  SizedBox(height: 8),

                                                  Container(
                                                    height: 40,

                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 10,
                                                        ),

                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors
                                                            .grey
                                                            .shade300,
                                                      ),

                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            6,
                                                          ),
                                                    ),

                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "07:00",

                                                          style: TextStyle(
                                                            fontSize: 12,
                                                          ),
                                                        ),

                                                        SizedBox(width: 8),

                                                        Text(
                                                          "AM",

                                                          style: TextStyle(
                                                            fontSize: 12,

                                                            color: Colors.green,
                                                          ),
                                                        ),

                                                        SizedBox(width: 5),

                                                        Text(
                                                          "PM",

                                                          style: TextStyle(
                                                            fontSize: 12,

                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),

                                        SizedBox(height: 15),

                                        Container(
                                          height: 70,

                                          width: double.infinity,

                                          padding: EdgeInsets.all(10),

                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey.shade300,
                                            ),

                                            borderRadius: BorderRadius.circular(
                                              6,
                                            ),
                                          ),

                                          child: Text(
                                            "Explain the reason for regularization",

                                            style: TextStyle(
                                              fontSize: 12,

                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),

                                        SizedBox(height: 15),

                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,

                                          children: [
                                            Text(
                                              "Apply leave instead?",

                                              style: TextStyle(fontSize: 12),
                                            ),

                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => LeaveApplicationsScreen(),));
                                              },

                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.black,

                                                foregroundColor: Colors.white,

                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 18,
                                                  vertical: 8,
                                                ),

                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),

                                              child: Text(
                                                "Save",

                                                style: TextStyle(fontSize: 11),
                                              ),
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
                              backgroundColor: Colors.black,

                              foregroundColor: Colors.white,

                              padding: EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 4,
                              ),

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),

                            child: Text(
                              "Regularize",

                              style: TextStyle(fontSize: 10),
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
            icon: Image.asset("assets/svg icons/Rectangle 200.png", height: 30),
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
            icon: Image.asset("assets/svg icons/Rectangle 199.png", height: 30),
            label: " ",
          ),
        ],
      ),
    );
  }
}
