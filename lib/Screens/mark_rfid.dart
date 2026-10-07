import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MarkRfid extends StatefulWidget {
  const MarkRfid({super.key});

  @override
  State<MarkRfid> createState() => _MarkRfidState();
}

class _MarkRfidState extends State<MarkRfid> {
  final List<Map<String, String>> contacts = [
    {
      "name": "Sanjay Shelke",
      "relation": "Father",
      "phone": "8689986868",
      "email": "sujito@gmail.com",
    },
    {
      "name": "Sunita Shelke",
      "relation": "Mother",
      "phone": "8689986868",
      "email": "sujito@gmail.com",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 211, 211, 211),
      body: Column(
        children: [
          Container(
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 192, 192, 192),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Text(
                  "In",
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                ),

                Container(
                  height: 25,
                  width: 1,
                  margin: const EdgeInsets.symmetric(horizontal: 18),
                  color: const Color.fromARGB(255, 132, 132, 132),
                ),

                Expanded(
                  child: Center(
                    child: Text(
                      "Scanned Code",
                      style: TextStyle(
                        fontSize: 11,
                        color: const Color.fromARGB(255, 72, 72, 72),
                      ),
                    ),
                  ),
                ),

                SvgPicture.asset(
                  "assets/images/spinner1.svg",
                  height: 18,
                  width: 15,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Member Details",
                style: TextStyle(
                  fontSize: 13,
                  color: const Color.fromARGB(255, 72, 72, 72),
                ),
              ),
            ],
          ),
          Divider(color: Colors.black),
          SizedBox(height: 20),
          Row(
            children: [
              Image.asset("assets/images/girl.jpg", height: 100, width: 100),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sujata Shelke",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
              Text(
                " Guardian / Parents Details",
                style: TextStyle(
                  fontSize: 13,
                  color: const Color.fromARGB(255, 72, 72, 72),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
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
                      SizedBox(
                        width: 55,
                        height: 25,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Text("Notify", style: TextStyle(fontSize: 10)),
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
                      SizedBox(
                        width: 55,
                        height: 25,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Text("Notify", style: TextStyle(fontSize: 10)),
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

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle,
                color: const Color.fromARGB(255, 44, 103, 46),
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                "Successfully Notified Mr. Sanjay Shelke",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
