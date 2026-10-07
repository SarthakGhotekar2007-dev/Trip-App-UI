import 'package:flutter/material.dart';
import 'package:trip_app/Screens/phone_screen.dart';

class OrganizationScreen extends StatefulWidget {
  const OrganizationScreen({super.key});

  @override
  State<OrganizationScreen> createState() => _OrganizationScreenState();
}

class _OrganizationScreenState extends State<OrganizationScreen> {

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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
      Spacer(),
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
                                        builder: (context) =>  PhoneScreen(),
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
                Spacer(),
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
