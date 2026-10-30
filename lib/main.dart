import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A3A4F),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shield, size: 80, color: Colors.amber),
              SizedBox(height: 10),
              Text('SAKTI BOT OFFICIAL', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              Text('New Version - Safe', style: TextStyle(color: Colors.amberAccent, fontSize: 12)),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nomor HP',
                  filled: true,
                  fillColor: Color(0xFF2C4A5F),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 12),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Sandi',
                  filled: true,
                  fillColor: Color(0xFF2C4A5F),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF7A2A1A)),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
                  },
                  child: Text('LOGIN - MASUK'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double speed = 87;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(milliseconds: 400), (t) {
      setState(() {
        speed = 70 + (DateTime.now().millisecond % 30);
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  Widget buildCard(String title, List<String> list) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFF6B2E1F),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(title, style: TextStyle(color: Colors.yellowAccent, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          for (var e in list)
            Row(
              children: [
                CircleAvatar(radius: 10, child: Text('?', style: TextStyle(fontSize: 8))),
                SizedBox(width: 8),
                Expanded(child: Text(e, style: TextStyle(color: Colors.white, fontSize: 12))),
                Switch(value: true, activeColor: Colors.blue, onChanged: (v) {}),
              ],
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A3A4F),
      appBar: AppBar(
        backgroundColor: Color(0xFF1A3A4F),
        title: Text('SAKTI BOT OFFICIAL - New Version', style: TextStyle(fontSize: 14)),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.fromLTRB(12, 12, 12, 80),
            children: [
              buildCard('BACKSOUND & NOTIFICATION', [
               