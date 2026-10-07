import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_app/Screens/hierarchy_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<Map<String, String>> contacts = [
    {
      "name": "Sanjay Shelke ",
      "relation": "Father",
      "phone": "8689986868",
      "email": "sujito@gmail.com",
    },
    {
      "name": "Sunita Shelke ",
      "relation": "Mother",
      "phone": "8689986868",
      "email": "sujito@gmail.com",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text("Profile", style: TextStyle(color: Colors.green)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Container(color: Colors.grey, height: 2, width: 40)],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HierarchyScreen(),));
                  },
                  child: Image.asset("assets/images/girl.jpg", height: 100, width: 100)),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sujata Shelke",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Student",
                      style: TextStyle(
                        fontSize: 13,
                        color: const Color.fromARGB(255, 72, 72, 72),
                      ),
                    ),
                    Text(
                      "BCA (Batch 1)",
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 46, 46, 46),
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/images/call.svg",
                          height: 12,
                          width: 12,
                        ),
                        SizedBox(width: 10),
                        Text("8689986868"),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/images/email.svg",
                          height: 10,
                          width: 10,
                        ),
                        SizedBox(width: 10),
                        Text("sujta@gmail.com"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Reporting to", style: TextStyle(color: Colors.grey)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Shrikant Dubey  ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    children: [
                      TextSpan(
                        text: "(AVP - TECHNOLOGY)",
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Guardian / Parents Details", style: TextStyle(color: Colors.grey, fontSize: 13),),
            ],
          ),
                      SizedBox(height: 20),
                     ListView.builder(
            shrinkWrap: true,
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              final contact = contacts[index];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: contact["name"],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: " (${contact["relation"]})",
                          style: TextStyle(
                            color: Color.fromARGB(255, 87, 87, 87),
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 8),

                  // Phone Row
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 17,
                        color: Color.fromARGB(255, 87, 87, 87),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Text(
                          contact["phone"]!,
                          style: TextStyle(
                            color: Color.fromARGB(255, 87, 87, 87),
                            fontSize: 13,
                          ),
                        ),
                      ),
                     
                    ],
                  ),

                  SizedBox(height: 7),

                  // Email Row
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        size: 17,
                        color: Color.fromARGB(255, 87, 87, 87),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Text(
                          contact["email"]!,
                          style: TextStyle(
                            color: Color.fromARGB(255, 87, 87, 87),
                            fontSize: 13,
                          ),
                        ),
                      ),
                     
                    ],
                  ),

                  SizedBox(height: 18),
                ],
              );
            },
          ),
          SizedBox(height: 25),

          ],
        ),
      ),
    );
  }
}
