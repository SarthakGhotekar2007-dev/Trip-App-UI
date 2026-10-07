import 'package:flutter/material.dart';
import 'package:trip_app/Screens/mark_manual.dart';
import 'package:trip_app/Screens/mark_qrcode.dart';
import 'package:trip_app/Screens/mark_rfid.dart';

class MarkAttendance extends StatefulWidget {
  const MarkAttendance({super.key});

  @override
  State<MarkAttendance> createState() => _MarkAttendanceState();
}

class _MarkAttendanceState extends State<MarkAttendance> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 211, 211, 211),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            children: [
              Row(children: [Text("Mark Attendance"),
              Spacer(),
              Icon(Icons.cancel)
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Container(color: Colors.grey, height: 3, width: 40)],
              ),
              SizedBox(height: 15),
              Container(
                height: 40,
                color: const Color.fromARGB(255, 205, 204, 204),
                child: TabBar(
                  labelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  indicatorColor: Colors.transparent,
                  tabs: [Text("RFID"), Text("QR CODE"), Text("MANUAL")],
                ),
              ),
              SizedBox(height: 25),
              Expanded(
                child: TabBarView(
                  children: [MarkRfid(), MarkQrcode(), MarkManual()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
