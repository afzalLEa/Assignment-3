import 'package:flutter/material.dart';

void main() {
  runApp(AboutScreen());
}

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('About', style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          leading: BackButton(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Text(
                'Our Mission',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Our mission is to provide users with a comprehensive and reliable source of information on a wide range of topics.',
              ),
              SizedBox(height: 16),
              Text(
                'Background',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'This app was developed by a team of passionate individuals dedicated to creating a valuable resource for users.',
              ),
              SizedBox(height: 16),
              Text(
                'Contact Us',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'If you have any questions, feel free to email us at support@infoapp.com.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
