import 'package:flutter/material.dart';
import 'package:trip_app/Screens/new_tab_visitors_screen.dart';

class ApprovalsScreen extends StatefulWidget {
  const ApprovalsScreen({super.key});

  @override
  State<ApprovalsScreen> createState() => _ApprovalsScreenState();
}

class _ApprovalsScreenState extends State<ApprovalsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.grey.shade400,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text("Approvals", style: TextStyle(color: const Color.fromARGB(255, 59, 59, 59))),
                Spacer(),
                Icon(Icons.cancel,color: Colors.black,)
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Container(color: Colors.grey, height: 2, width: 80)],
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NewTabVisitorsScreen(),));
                        },
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 202, 200, 200)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Raosaheb Ghuge",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    Text("Project Manager"),
                    Row(
                      children: [
                        Text("8689988686",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                        Spacer(),
                        Icon(Icons.check_box,size: 30,),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 21, 21, 21)
                          ),
                          child: Icon(Icons.close,color: Colors.white,size: 23,))
                      ],
                    )
                  ],
                ),
              ),
            ),
             SizedBox(height: 20,),
            InkWell(
              onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NewTabVisitorsScreen(),));
                        },
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 202, 200, 200)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Deepli Awari",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    Text("Developer"),
                    Row(
                      children: [
                        Text("8849958868",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                        Spacer(),
                        Icon(Icons.check_box,size: 30,),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 21, 21, 21)
                          ),
                          child: Icon(Icons.close,color: Colors.white,size: 23,))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}