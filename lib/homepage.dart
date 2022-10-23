// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1000/sidebar/addschedule.dart';
import 'package:flutter_application_1000/sidebar/bookhistory.dart';
import 'package:flutter_application_1000/sidebar/dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FREELANCER"),
      ),
      body: Center(
        child: Text(
          "Hello User!",
          style: TextStyle(fontSize: 50),
        ),
      ),
      drawer: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.8,
        height: double.infinity,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Staring Sabah"),
              accountEmail: Text("test@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amberAccent,
                radius: 50,
                child: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const AddSchedulePage()));
              },
              leading: const Icon(Icons.list),
              title: const Text("AddSchedule "),
              subtitle: const Text("Arrange your Schedule"),
              trailing: const Icon(Icons.widgets),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const BookHistoryPage()));
              },
              leading: const Icon(Icons.list),
              title: const Text("Booking History"),
              subtitle: const Text("See your booking history"),
              trailing: const Icon(Icons.widgets),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const DashBoardPage()));
              },
              leading: const Icon(Icons.list),
              title: const Text("Dashboard "),
              subtitle: const Text("Dashboard info"),
              trailing: const Icon(Icons.widgets),
            ),
          ],
        ),
      ),
    );
  }
}
