import 'package:college_alert/widgets/cards.dart';
import 'package:flutter/material.dart';

class CollegeEvent extends StatefulWidget {
  const CollegeEvent({super.key});

  @override
  State<CollegeEvent> createState() => _CollegeEventState();
}

class _CollegeEventState extends State<CollegeEvent> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
            title: const Center(
              child: Text('College Alert'),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.newspaper), text: "Newsfeeds"),
              ],
            ),
          ),
        ),
        body: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              MyCard(
                  Colors.greenAccent,
                  "Sports",
                  'assets/sports.jpg',
                  "The sports week for the new commers are arranged 2nd week of march, you are allowed to come without uniform.",
                  "March 4, 2024 "),
              MyCard(
                  Colors.redAccent,
                  "Exams",
                  'assets/exams.png',
                  "The Exam of Final years students are scedule this month, kindly be prepare for the exam, and best of luck.",
                  "Feburary 29, 2024"),
              MyCard(
                  Colors.blueAccent,
                  "Acedamic",
                  'assets/class.png',
                  "The classes of second semester students are starting from 1st march",
                  "March 01, 2024"),
              MyCard(
                  Colors.grey,
                  "Tour",
                  'assets/tour.png',
                  "A tour is sceduled to Islamabad only for female students",
                  "March 05, 2024"),
            ],
          ),
        ),
      ),
    );
  }
}
