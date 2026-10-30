import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage()));

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A3A4F),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.shield, size: 80, color: Colors.amber),
            SizedBox(height: 10),
            Text('SAKTI BOT OFFICIAL', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
            Text('New Version - Full Features', style: TextStyle(color: Colors.amberAccent)),
            SizedBox(height: 30),
            TextField(decoration: InputDecoration(labelText: 'Nomor HP', filled: true, fillColor: Color(0xFF2C4A5F), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))), style: TextStyle(color: Colors.white)),
            SizedBox(height: 12),
            TextField(obscureText: true, decoration: InputDecoration(labelText: 'Sandi', filled: true, fillColor: Color(0xFF2C4A5F), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))), style: TextStyle(color: Colors.white)),
            SizedBox(height: 20),
            SizedBox(width: double.infinity, height: 50, child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF7A2A1A)), onPressed: () {
              setState(()=>loading=true);
              Future.delayed(Duration(seconds: 1), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>HomePage())));
            }, child: loading?CircularProgressIndicator(color: Colors.white):Text('LOGIN - MASUK'))),
          ]),
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
  double speed = 87; late Timer t;
  bool s1=true,s2=true,s3=true,s4=false,s5=false,s6=false,s7=true,s8=false;
  @override
  void initState(){ super.initState(); t=Timer.periodic(Duration(milliseconds: 350), (_){ setState(()=>speed=65+(DateTime.now().millisecond%35)); }); }
  @override
  void dispose(){ t.cancel(); super.dispose(); }
  Widget item(String txt, bool val, Function(bool) on){ return Row(children:[CircleAvatar(radius: 12, child: Text('?',style: TextStyle(fontSize: 10))), SizedBox(width: 8), Expanded(child: Text(txt, style: TextStyle(color: Colors.white, fontSize: 13))), Switch(value: val, activeColor: Colors.blue, onChanged: on)]); }
  Widget card(String title, List<Widget> childs){
    return Container(margin: EdgeInsets.only(bottom: 12), padding: EdgeInsets.all(12), decoration: BoxDecoration(color: Color(0xFF6B2E1F), borderRadius: BorderRadius.circular(16)), child: Column(children:[Text(title, style: TextStyle(color: Colors.yellowAccent, fontWeight: FontWeight.bold, fontSize: 13)), SizedBox(height: 8), ...childs]));
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF1A3A4F),
      appBar: AppBar(backgroundColor: Color(0xFF1A3A4F), title: Text('SAKTI BOT OFFICIAL - New Version', style: TextStyle(fontSize: 14))),
      body: Stack(children:[
        ListView(padding: EdgeInsets.fromLTRB(12,12,12,90), children:[
          card('BACKSOUND & NOTIFICATION', [item('Sound Notification (Lagu 1)', s1, (v)=>setState(()=>s1=v)), item('Sound Notification (Lagu 2)', s2, (v)=>setState(()=>s2=v)), item('Auto Ping Network', s3, (v)=>setState(()=>s3=v))]),
          card('AUTOBID POP UP OPTIONS', [item('Autobid Sortir (Khusus Kurir)', s4, (v)=>setState(()=>s4=v)), item('Autobid Sortir Price No Skip', s5, (v)=>setState(()=>s5=v)), item('Autobid Sortir Price Skip', s6, (v)=>setState(()=>s6=v)), item('Autobid UpPrice Settings', s7, (v)=>setState(()=>s7=v))]),
          card('AUTOBID PER KM', [item('Autobid PerKm Original', s7, (v)=>setState(()=>s7=v)), item('Autobid PerKm V2 - Speed 87ms', s8, (v)=>setState(()=>s8=v))]),
          SizedBox(height: 10),
          ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF7A2A1A), minimumSize: Size(double.infinity,50), shape: StadiumBorder()), onPressed: (){ ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Pengaturan Disimpan - Safe Mode'))); }, child: Text('SIMPAN PENGATURAN - SAFE MODE')),
        ]),
        Positioned(left: 12, top: 10, child: Container(padding: EdgeInsets.all(10), decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(12)), child: Column(children:[Icon(Icons.shield, color: Colors.orange, size: 20), Text('Speed: ${speed.toInt()} ms', style: TextStyle(color: Colors.amber, fontSize: 11, fontWeight: FontWeight.bold)), Container(margin: EdgeInsets.only(top:4), padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2), decoration: BoxDecoration(border: Border.all(color: Colors.white), borderRadius: BorderRadius.circular(8)), child: Text('AUTO', style: TextStyle(color: Colors.greenAccent, fontSize: 9)))]))),
      ]),
    );
  }
}