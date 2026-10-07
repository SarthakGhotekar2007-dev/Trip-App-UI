import 'package:flutter/material.dart';
import 'package:trip_app/Screens/visitor_entry_screen.dart';

class NewTabVisitorsScreen extends StatefulWidget {
  const NewTabVisitorsScreen({super.key});

  @override
  State<NewTabVisitorsScreen> createState() => _NewTabVisitorsScreenState();
}

class _NewTabVisitorsScreenState extends State<NewTabVisitorsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

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
                          color: Colors.white,
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
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => VisitorEntryScreen(),));
                        },
                              child: Container(
                                height: 45,
                              
                                decoration: BoxDecoration(
                                 color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              
                                child: Center(
                                  child: Text(
                                    "Check In",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                       
                        ],
                      ),
                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 100,
                            height: 75,
                            padding: EdgeInsets.all(10),

                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
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
                              color: Colors.grey.shade300,
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
                              color: Colors.grey.shade300,
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
                              "Leave Request",

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
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text("Approved",style: TextStyle(color: const Color.fromARGB(255, 22, 186, 25),fontSize:11 ),),
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