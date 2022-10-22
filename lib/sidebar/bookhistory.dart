import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        title: Text("your Booking History"),
      ),
      body: Text("Booking History"),
    );
  }
}
