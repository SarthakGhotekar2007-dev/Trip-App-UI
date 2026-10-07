import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:trip_app/Screens/vsitor_entry_with_data_screen.dart';

class VisitorEntryScreen extends StatefulWidget {
  const VisitorEntryScreen({super.key});

  @override
  State<VisitorEntryScreen> createState() => _VisitorEntryScreenState();
}

class _VisitorEntryScreenState extends State<VisitorEntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 181, 180, 180),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
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
                  DottedBorder(
                    options: RoundedRectDottedBorderOptions(
                      color: const Color.fromARGB(255, 60, 59, 59),
                      strokeWidth: 1,
                      dashPattern: [4, 3],
                      radius: const Radius.circular(15),
                    ),
          
                    child: Container(
                      height: 125,
                      width: 90,
                      decoration: BoxDecoration(
                        color:Color(0xFF9D9D9D),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Center(
                        child: Text(
                          "Tap for Photo",
                          style: TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 77, 77, 77),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 22),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color:Color(0xFF9D9D9D),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("Name of the visitor", style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 77, 77, 77),
                          ),)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12,),
               Row(
                children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color:Color(0xFF9D9D9D),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Phone No", style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 77, 77, 77),
                            ),),
                      ),
                    ),
                    SizedBox(width: 10,),
                     Expanded(
                       child: Container(
                        height: 40,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFF9D9D9D),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Location", style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 77, 77, 77),
                            ),),
                                           ),
                     ),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 80,
                      decoration: BoxDecoration(
                         color:Color(0xFF9D9D9D),
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: AlignmentGeometry.topCenter,
                        child: Text("Purpose of the Visit", style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 77, 77, 77),
                              ),),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                   Expanded(
                     child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color:Color(0xFF9D9D9D),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("Meeting with?", style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 77, 77, 77),
                            ),)),
                      ),
                   ),
                ],
              ),
              SizedBox(height: 12,),
              SizedBox(
                width: double.infinity,
                child: InkWell(
                  onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => VisitorDataScreen(),));
                        },
                  child: ElevatedButton(
                    onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Color(0xFF4F4F4F),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10)
                    )
                  ),
                   child: Text("Ask for Approval")),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("12 Dec, 2023", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),),
                ],
              ),
               SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("09:00 AM", style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),),
                ],
              ),
              SizedBox(height: 15,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                 ElevatedButton(onPressed: (){
                  
                          Navigator.push(context, MaterialPageRoute(builder: (context) => VisitorDataScreen(),));
                        },
                
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF6ABC8D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10)
                  )
                 ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 10),
                    child: Text("Allow",style: TextStyle(color: Colors.black,fontSize: 16),),
                  )),
                  SizedBox(width: 15,),
                  ElevatedButton(onPressed: (){
                  
                          Navigator.push(context, MaterialPageRoute(builder: (context) => VisitorDataScreen(),));
                        },
                  
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFC9834),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10)
                  )
                 ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 10),
                    child: Text("Reject",style: TextStyle(color:Colors.black,fontSize: 16),),
                  ))
              ]
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
