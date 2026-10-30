import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(debugShowCheckedModeBanner:false,home:Home()));
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF1A3A4F),
      appBar: AppBar(backgroundColor: Color(0xFF1A3A4F),title: Text('SAKTI BOT OFFICIAL')),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          Container(padding: EdgeInsets.all(16),decoration: BoxDecoration(color: Color(0xFF6B2E1F),borderRadius: BorderRadius.circular(16)),child: Column(children:[
            Text('BACKSOUND & NOTIFICATION',style: TextStyle(color: Colors.yellowAccent,fontWeight: FontWeight.bold)),
            ListTile(title: Text('Sound Notification (Lagu 1)',style: TextStyle(color: Colors.white)),trailing: Switch(value: true,activeColor: Colors.blue,onChanged: (v){})),
            ListTile(title: Text('Auto Ping Network',style: TextStyle(color: Colors.white)),trailing: Switch(value: true,activeColor: Colors.blue,onChanged: (v){})),
          ])),
          SizedBox(height: 12),
          Container(padding: EdgeInsets.all(16),decoration: BoxDecoration(color: Color(0xFF6B2E1F),borderRadius: BorderRadius.circular(16)),child: Column(children:[
            Text('AUTOBID POP UP OPTIONS',style: TextStyle(color: Colors.yellowAccent,fontWeight: FontWeight.bold)),
            Text('Speed: 87ms | AUTO Mode Aktif',style: TextStyle(color: Colors.white)),
          ])),
          SizedBox(height: 12),
          ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF7A2A1A),minimumSize: Size(double.infinity,50)),onPressed: (){},child: Text('SIMPAN PENGATURAN - SAFE MODE')),
        ],
      ),
    );
  }
}