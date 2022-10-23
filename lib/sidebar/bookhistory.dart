import 'package:flutter/material.dart';

class BookHistoryPage extends StatefulWidget {
  const BookHistoryPage({super.key});

  @override
  State<BookHistoryPage> createState() => _BookHistoryPageState();
}

class _BookHistoryPageState extends State<BookHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Booking Details"),
      ),
      body: Text(
        "Looking For UI/UX Designer",
      ),
    );
  }
}
