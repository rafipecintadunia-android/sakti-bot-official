import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage()));

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
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
            Text('V3 - Auto Narik Order', style: TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            TextField(decoration: InputDecoration(labelText: 'Nomor HP', filled: true, fillColor: Colors.white, border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))), style: TextStyle(color: Colors.black)), style: TextStyle(color: Colors.white)),
            SizedBox(height: 12),
            TextField(obscureText: true, decoration: InputDecoration(labelText: 'Sandi', filled: true, fillColor: Colors.white, border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))), style: TextStyle(color: Colors.black)),
            SizedBox(height: 20),
            SizedBox(width: double.infinity, height: 50, child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFFC107)), onPressed: () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>HomePage())); }, child: Text('LOGIN - MASUK', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)))),
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
  bool s1=true,s2=true,s3=true,s4=true,s5=false,s6=false,s7=true,s8=true;
  bool l1=true,l2=true,l3=false,l4=true; // layanan
  double minPrice=15000, maxDist=3.0;
  bool radarOn=false;
  int orderMasuk=0, orderNyantol=0;

  @override
  void initState(){ super.initState(); t=Timer.periodic(Duration(milliseconds: 350), (_){ setState(()=>speed=65+(DateTime.now().millisecond%35)); }); }
  @override
  void dispose(){ t.cancel(); super.dispose(); }

  Widget switchItem(String txt, bool val, Function(bool) on){ return Row(children:[CircleAvatar(radius: 12, backgroundColor: Colors.white24, child: Text('?',style: TextStyle(fontSize: 10, color: Colors.white))), SizedBox(width: 8), Expanded(child: Text(txt, style: TextStyle(color: Colors.white, fontSize: 13))), Switch(value: val, activeColor: Colors.lightBlueAccent, onChanged: on)]); }
  Widget card(String title, List<Widget> childs){
    return Container(margin: EdgeInsets.only(bottom: 12), padding: EdgeInsets.all(12), decoration: BoxDecoration(color: Color(0xFF6B2E1F), borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.white10)), child: Column(children:[Text(title, style: TextStyle(color: Colors.yellowAccent, fontWeight: FontWeight.bold, fontSize: 13)), SizedBox(height: 8), ...childs]));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF1A3A4F),
      appBar: AppBar(backgroundColor: Color(0xFF1A3A4F), title: Text('SAKTI BOT V3 - AUTO NARIK', style: TextStyle(fontSize: 14, color: Colors.white)), actions: [Padding(padding: EdgeInsets.only(right:12), child: Center(child: Text('Order: $orderNyantol/$orderMasuk', style: TextStyle(color: Colors.greenAccent, fontSize: 12))))]),
      body: Stack(children:[
        ListView(padding: EdgeInsets.fromLTRB(12,12,12,100), children:[
          // AKSES
          Container(margin: EdgeInsets.only(bottom:12), padding: EdgeInsets.all(12), decoration: BoxDecoration(color: Colors.black54, borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.amber)), child: Column(children:[
            Text('IZIN AKSES - WAJIB AKTIF', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold)),
            SizedBox(height:8),
            Row(children:[Expanded(child: ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: Colors.green), onPressed: (){ ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Buka Settings > Accessibility > Aktifkan SAKTI BOT'))); }, icon: Icon(Icons.accessibility, color: Colors.white), label: Text('Aksesibilitas', style: TextStyle(color: Colors.white, fontSize: 11)))), SizedBox(width:8), Expanded(child: ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue), onPressed: (){ ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Buka Settings > Display over other apps > Aktifkan'))); }, icon: Icon(Icons.layers, color: Colors.white), label: Text('Overlay', style: TextStyle(color: Colors.white, fontSize: 11))))]),
          ])),
          // LAYANAN OJOL
          card('LAYANAN OJOL - PILIH YANG AKTIF', [switchItem('GoRide / GoRide Comfort', l1, (v)=>setState(()=>l1=v)), switchItem('GoFood / GoMart', l2, (v)=>setState(()=>l2=v)), switchItem('GrabBike / GrabFood', l3, (v)=>setState(()=>l3=v)), switchItem('ShopeeFood / Maxim', l4, (v)=>setState(()=>l4=v))]),
          // RADAR & FILTER
          card('RADAR & FILTER ORDER BIAR NYANTOL', [
            Row(children:[Text('Harga Min: Rp ${minPrice.toInt()}', style: TextStyle(color: Colors.white, fontSize: 12)), Expanded(child: Slider(value: minPrice, min: 8000, max: 50000, divisions: 7, activeColor: Colors.amber, onChanged: (v)=>setState(()=>minPrice=v)))]),
            Row(children:[Text('Jarak Max: ${maxDist.toStringAsFixed(1)} KM', style: TextStyle(color: Colors.white, fontSize: 12)), Expanded(child: Slider(value: maxDist, min: 1, max: 8, divisions: 7, activeColor: Colors.amber, onChanged: (v)=>setState(()=>maxDist=v)))]),
            switchItem('RADAR MODE - Scan Order Terus', radarOn, (v){ setState(()=>radarOn=v); if(v){ orderMasuk++; ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('RADAR AKTIF - Mencari orderan...'))); }}),
          ]),
          // BACKSOUND
          card('BACKSOUND & NOTIFICATION', [switchItem('Sound Notif (Lagu 1) - Order Masuk', s1, (v)=>setState(()=>s1=v)), switchItem('Sound Notif (Lagu 2) - Order Nyantol', s2, (v)=>setState(()=>s2=v)), switchItem('Auto Ping Network - Anti Delay', s3, (v)=>setState(()=>s3=v))]),
          // AUTOBID
          card('AUTOBID POP UP OPTIONS', [switchItem('Autobid Sortir (Khusus Kurir)', s4, (v)=>setState(()=>s4=v)), switchItem('Autobid Sortir Price No Skip', s5, (v)=>setState(()=>s5=v)), switchItem('Autobid Sortir Price Skip', s6, (v)=>setState(()=>s6=v)), switchItem('Autobid UpPrice Settings', s7, (v)=>setState(()=>s7=v))]),
          card('AUTOBID PER KM - AUTO COLOK', [switchItem('PerKm Original - Stabil', s7, (v)=>setState(()=>s7=v)), switchItem('PerKm V2 - Speed ${speed.toInt()}ms - SUPER CEPAT', s8, (v)=>setState(()=>s8=v))]),
          SizedBox(height:10),
          ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFFC107), minimumSize: Size(double.infinity,55), shape: StadiumBorder()), onPressed: (){
            setState(()=>orderNyantol++);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('SETTING DISIMPAN! Bot siap narik order GoRide & GoFood!'), backgroundColor: Colors.green));
          }, child: Text('SIMPAN & AKTIFKAN BOT - MODE NARIK', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
          SizedBox(height:8),
          Center(child: Text('V3 siap dipake Ojol - Aktifkan Aksesibilitas & Overlay dulu!', style: TextStyle(color: Colors.white54, fontSize: 10))),
        ]),
        Positioned(left: 12, top: 10, child: Container(padding: EdgeInsets.all(10), decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.greenAccent)), child: Column(children:[Icon(Icons.shield, color: Colors.orange, size: 20), Text('Speed: ${speed.toInt()} ms', style: TextStyle(color: Colors.amber, fontSize: 11, fontWeight: FontWeight.bold)), Container(margin: EdgeInsets.only(top:4), padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2), decoration: BoxDecoration(color: radarOn?Colors.green:Colors.grey, borderRadius: BorderRadius.circular(8)), child: Text(radarOn?'RADAR ON':'RADAR OFF', style: TextStyle(color: Colors.white, fontSize: 9)))]))),
      ]),
    );
  }
}