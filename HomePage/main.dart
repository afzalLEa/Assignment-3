import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home', style: TextStyle(fontWeight: FontWeight.bold)),
          actions: [IconButton(icon: Icon(Icons.settings), onPressed: () {})],
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to Our App',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Explore the features and information we offer. Stay updated with the latest news and insights.',
              ),
              SizedBox(height: 24),
              Text(
                'App Highlights',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              ListTile(
                leading: Icon(Icons.explore),
                title: Text('Explore'),
                subtitle: Text('Discover new content and features'),
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text('Contact'),
                subtitle: Text('Get in touch with us'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
