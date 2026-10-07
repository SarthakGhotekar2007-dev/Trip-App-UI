import 'package:flutter/material.dart';
import 'package:trip_app/Screens/role_page.dart';

class OrgScreen extends StatefulWidget {
  const OrgScreen({super.key});

  @override
  State<OrgScreen> createState() => _OrgScreenState();
}

class _OrgScreenState extends State<OrgScreen> {
    final List<Map<String, String>> organizations = [
    {
      "name": "the baap company",
      "type": "Software Company",
      "image": "assets/images/baaplogo.jpg",
    },
    {"name": "Infosys India Pvt Ltd", "type": "Software Company", "image": ""},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 183, 182, 182),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 25),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Welcome
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
                  ],
                ),

                // Search + Organizations
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Search your organization",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          itemCount: organizations.length,
                          itemBuilder: (context, index) {
                            final organization = organizations[index];
                        
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Container(
                                 width: double.infinity,
                                                        color: Colors.grey,
                                child: ListTile(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>  RolePage(),
                                      ),
                                    );
                                  },
                                                        
                                  leading: organization["image"]!.isNotEmpty
                                      ? CircleAvatar(
                                          backgroundImage: AssetImage(
                                            organization["image"]!,
                                          ),
                                        )
                                      :CircleAvatar(backgroundColor:Colors.grey,),
                                                        
                                  title: Text(
                                    organization["name"]!,
                                    style:  TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                                        
                                  subtitle: Text(organization["type"]!),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                // Powered By
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
                        color: Color.fromARGB(255, 123, 121, 121),
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

            // Dot Image
            Positioned(
              top: -75,
              right: -75,
              child: Image.asset(
                "assets/images/dot.png",
                width: 260,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}