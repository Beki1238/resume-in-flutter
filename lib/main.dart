import 'package:flutter/material.dart';

void main() {
  runApp(MyResumeApp());
}

class MyResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResumeScreen(),
    );
  }
}

class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Resume'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildHeader(),
            SizedBox(height: 20),
            buildSectionTitle('About Me'),
            buildText("I am a 4th-year Software student at Dire Dawa University with a 3.85 GPA. Passionate about full-stack development and building tech solutions."),
            SizedBox(height: 20),
            buildSectionTitle('Skills'),
            buildBulletPoint('React.js (Frontend)'),
            buildBulletPoint('Laravel (Backend)'),
            buildBulletPoint('Flutter (Mobile Development)'),
            SizedBox(height: 20),
            buildSectionTitle('Education'),
            buildText("Adire Dawa University - BSc in Software (Expected Graduation: 2026)"),
            SizedBox(height: 20),
            buildSectionTitle('Projects'),
            buildBulletPoint('Cinema Seat Reservation System (Flutter & Laravel)'),
            SizedBox(height: 20),
            buildSectionTitle('Contact'),
            buildText("LinkedIn: linkedin.com/in/bereket-bahiru-73bb08297/"),
            buildText("GitHub: github.com/Beki1238"),
            buildText("Email: bahibeki@gmail.com"),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/profile.jpg'), // Add your image in assets
        ),
        SizedBox(height: 10),
        Text(
          'Bereket Bahiru',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Text('Aspiring Full-Stack Developer', style: TextStyle(fontSize: 16)),
      ],
    );
  }

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
    );
  }

  Widget buildText(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• ', style: TextStyle(fontSize: 16)),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
