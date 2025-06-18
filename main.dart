import 'package:flutter/material.dart';

void main() {
  runApp(ResumeApp());
}

class ResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume - Mohammad Afzal Malik',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Resume'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.deepPurple,
                child: Text(
                  'M',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Name: Mohammad Afzal Malik',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Gender: Male', style: TextStyle(fontSize: 18)),
            Text(
              'Email: mohammad.malik_cs.aiml23@gla.ac.in',
              style: TextStyle(fontSize: 18),
            ),
            Text('College: GLA University', style: TextStyle(fontSize: 18)),
            Text(
              'Course: B.Tech in CS (AI, ML & IoT)',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Divider(thickness: 2),
            Text(
              'About Me',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Aspiring Computer Science student with a specialization in Artificial Intelligence, Machine Learning, and IoT. Passionate about solving real-world problems using modern technologies. Currently pursuing B.Tech at GLA University.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
