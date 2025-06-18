import 'package:flutter/material.dart';

void main() {
  runApp(ContactScreen());
}

class ContactScreen extends StatelessWidget {
  final _textFieldDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.grey[200],
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Contact', style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          leading: BackButton(),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("We'd love to hear from you!"),
              SizedBox(height: 16),
              Text(
                'Contact Information',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListTile(
                title: Text('Email'),
                subtitle: Text('support@example.com'),
              ),
              ListTile(
                title: Text('Phone'),
                subtitle: Text('+1 (555) 123-4567'),
              ),
              ListTile(
                title: Text('Address'),
                subtitle: Text('123 Main Street, Anytown, USA'),
              ),
              SizedBox(height: 16),
              Text(
                'Contact Form',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: _textFieldDecoration.copyWith(
                  hintText: 'Your Name',
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: _textFieldDecoration.copyWith(
                  hintText: 'Your Email',
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: _textFieldDecoration.copyWith(
                  hintText: 'Your Message',
                ),
                maxLines: 4,
              ),
              SizedBox(height: 12),
              ElevatedButton(onPressed: () {}, child: Text('Send Message')),
              SizedBox(height: 24),
              Text(
                'Follow Us',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListTile(leading: Icon(Icons.facebook), title: Text('Facebook')),
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Instagram'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
