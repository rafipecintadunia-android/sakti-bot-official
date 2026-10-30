import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Login()));
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: Color(0xFF1A3A4F),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.verified_user, size: 80, color: Colors.amber),
              Text('SAKTI BOT V4', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
              Text('AKUN AKTIF READY', style: TextStyle(color: Colors.greenAccent)),
              SizedBox(height: 25),
              TextField(decoration: InputDecoration(labelText: 'Nomor Akun Ojol', filled: true, fillColor: Colors.white, border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
              SizedBox(height: 12),
              TextField(decoration: InputDecoration(labelText: 'Kode: SAKTI-V3', filled: true, fillColor: Colors.white, border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () {
                    Navigator.pushReplacement(c, MaterialPageRoute(builder: (_) => Home()));
                  },
                  child: Text('AKTIFKAN AKUN & MASUK', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double speed = 85;
  late Timer t;
  bool a = true, b = true, c = true, d = true, r = true;
  bool s1 = true, s2 = true, s3 = true;
  bool acc = false, over = false, bg = false;

  @override
  void initState() {
    super.initState();
    t = Timer.periodic(Duration(milliseconds: 300), (timer) {
      setState(() {
        speed = 60 + (DateTime.now().millisecond % 35);
      });
    });
  }

  @override
  void dispose() {
    t.cancel();
    super.dispose();
  }

  void openAcc() {
    setState(() { acc = true; });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('✅ AKSESIBILITAS AKTIF!'), backgroundColor: Colors.green));
  }

  void openOver() {
    setState(() { over = true; });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('✅ OVERLAY AKTIF!'), backgroundColor: Colors.blue));
  }

  void startBg() {
    setState(() { bg = true; });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('✅ BACKGROUND JALAN DIBALIK LAYAR!'), backgroundColor: Colors.green));
  }

  Widget sw(String txt, bool val, Function(bool) on) {
    return Row(
      children: [
        Expanded(child: Text(txt, style: TextStyle(color: Colors.white, fontSize: 12))),
        Switch(value: val, activeColor: Colors.greenAccent, onChanged: on)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A3A4F),
      appBar: AppBar(backgroundColor: Color(0xFF1A3A4F), title: Text('SAKTI BOT V4 AKTIF', style: TextStyle(fontSize: 14, color: Colors.white))),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Colors.black54, borderRadius: BorderRadius.circular(12), border: Border.all(color: acc && over && bg ? Colors.green : Colors.amber, width: 2)),
            child: Column(
              children: [
                Text('IZIN WAJIB - KLIK 3 TOMBOL', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 12)),
                SizedBox(height: 6),
                Text(acc && over && bg ? '✅ SEMUA AKTIF - BOT SIAP NARIK!' : '⚠️ KLIK 3 TOMBOL BIAR AUTO KLIK', style: TextStyle(color: acc && over && bg ? Colors.greenAccent : Colors.white54, fontSize: 10)),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: acc ? Colors.green : Colors.red), onPressed: openAcc, child: Text(acc ? 'AKTIF' : 'AKSES', style: TextStyle(fontSize: 9)))),
                    SizedBox(width: 6),
                    Expanded(child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: over ? Colors.green : Colors.blue), onPressed: openOver, child: Text(over ? 'AKTIF' : 'OVERLAY', style: TextStyle(fontSize: 9)))),
                    SizedBox(width: 6),
                    Expanded(child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: bg ? Colors.green : Colors.orange), onPressed: startBg, child: Text(bg ? 'AKTIF' : 'BACKGROUND', style: TextStyle(fontSize: 9)))),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Color(0xFF6B2E1F), borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                Text('LAYANAN OJOL', style: TextStyle(color: Colors.yellowAccent, fontWeight: FontWeight.bold)),
                sw('GoRide / Comfort', a, (v) { setState(() { a = v; }); }),
                sw('GoFood / GoMart', b, (v) { setState(() { b = v; }); }),
                sw('GrabBike / Food', c, (v) { setState(() { c = v; }); }),
                sw('ShopeeFood / Maxim', d, (v) { setState(() { d = v; }); }),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Color(0xFF6B2E1F), borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                Text('RADAR & FILTER', style: TextStyle(color: Colors.yellowAccent, fontWeight: FontWeight.bold)),
                sw('RADAR MODE - Scan Terus', r, (v) { setState(() { r = v; }); }),
                Text('Speed: ${speed.toInt()} ms - Auto Colok', style: TextStyle(color: Colors.greenAccent)),
                sw('Auto Ping Anti Delay', s1, (v) { setState(() { s1 = v; }); }),
                sw('Autobid Sortir Price', s2, (v) { setState(() { s2 = v; }); }),
                sw('PerKM V2 SUPER CEPAT', s3, (v) { setState(() { s3 = v; }); }),
              ],
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: acc && over && bg ? Colors.amber : Colors.grey, minimumSize: Size(double.infinity, 55)),
            onPressed: () {
              if (!acc || !over || !bg) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('AKTIFKAN 3 IZIN DULU!'), backgroundColor: Colors.red));
                return;
              }
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('BOT V4 AKTIF DIBALIK LAYAR!'), backgroundColor: Colors.green));
            },
            child: Text(acc && over && bg ? 'SIMPAN & AKTIFKAN BOT' : 'AKTIFKAN 3 IZIN DULU', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}