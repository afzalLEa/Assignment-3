import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Root App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      home: MainScreen(),
      routes: {
        '/contact': (context) => ContactScreen(),
        '/about': (context) => AboutScreen(),
      },
    );
  }
}

// Main Screen with Bottom Navigation
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    ContactScreen(),
    AboutScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
        ],
      ),
    );
  }
}

// Home Screen
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home', style: TextStyle(fontWeight: FontWeight.bold)),
          actions: [IconButton(icon: Icon(Icons.settings), onPressed: () {})],
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

// Contact Screen
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
              ListTile(leading: Icon(Icons.camera_alt), title: Text('Instagram')),
            ],
          ),
        ),
      ),
    );
  }
}

// About Screen
class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('About', style: TextStyle(fontWeight: FontWeight.bold)),
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
