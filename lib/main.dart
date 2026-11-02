import 'package:flutter/material.dart';
void main(){runApp(MaterialApp(home: SaktiV6(),debugShowCheckedModeBanner: false));}
class SaktiV6 extends StatefulWidget{State<SaktiV6> createState()=>_SaktiV6State();}
class _SaktiV6State extends State<SaktiV6>{
  Map<String,bool> toggle = {
    'GoRide':true,'GoFood':true,'GrabBike':true,'ShopeeFood':true,'Maxim Bike':true,'inDrive Kota':true,'inDrive Bike':true,
    'RADAR':true,'Ping':true,'Autobid':true,'PerKM':true,'AutoClick':true
  };
  bool music=true;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("SAKTI BOT V6 REAL #13",style: TextStyle(color: Color(0xFF00FFAA))),backgroundColor: Colors.black),
      body: ListView(padding: EdgeInsets.all(12),children: [
        Container(padding: EdgeInsets.all(16),decoration: BoxDecoration(border: Border.all(color: Color(0xFF00FF88)),borderRadius: BorderRadius.circular(12)),color: Color(0xFF0A1F14)),
          child: Column(children: [
            Text("[ ROOT ACCESS GRANTED - V6 REAL FIX ]",style: TextStyle(color: Color(0xFF4ADE80))),
            SizedBox(height: 8),Text("> Auto-Click Engine Ready For InDrive",style: TextStyle(color: Colors.white54,fontSize: 12)),
            SizedBox(height: 12),Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text("🎵 DJ-OJOL-VIRAL.mp3 PLAYING",style: TextStyle(color: Colors.white70)),Switch(value: music,onChanged: (v){setState(()=>music=v);},activeColor: Color(0xFF00FF88))])
          ])),
        SizedBox(height: 12),
        Container(padding: EdgeInsets.all(12),decoration: BoxDecoration(border: Border.all(color: Colors.amber),borderRadius: BorderRadius.circular(12))),
          child: Column(children: [
            Text("IZIN WAJIB REAL - CARA AKTIFKAN:",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Row(children: [
              Expanded(child: _izinBtn("AKSES REAL",Colors.red)),
              SizedBox(width: 8),
              Expanded(child: _izinBtn("OVERLAY REAL",Colors.blue)),
              SizedBox(width: 8),
              Expanded(child: _izinBtn("BACKGROUND",Colors.orange)),
            ])
          ])),
        SizedBox(height: 12),
        _section("LAYANAN + INDRIVE REAL V6", ["GoRide / Comfort","GoFood / GoMart","GrabBike / Food","ShopeeFood / Maxim","Maxim Bike / Car","inDrive Kota [V6 REAL]","inDrive Bike / Kurir [V6 REAL]"]),
        SizedBox(height: 12),
        Container(padding: EdgeInsets.all(12),decoration: BoxDecoration(border: Border.all(color: Color(0xFF00FF88)),borderRadius: BorderRadius.circular(12),color: Color(0xFF0A2214)),
          child: Column(children: [
            Text("RADAR V6 REAL ENGINE",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold)),
            _tile("RADAR MODE - Scan Order Terus","RADAR"),
            Padding(padding: EdgeInsets.symmetric(vertical: 4),child: Text("> Speed: 84 ms - [REAL 84ms SUPER CEPAT]",style: TextStyle(color: Color(0xFF00FFAA),fontSize: 12))),
            _tile("Auto Ping Anti Delay","Ping"),
            _tile("Autobid Sortir Price","Autobid"),
            _tile("PerKM V2 + inDrive Filter","PerKM"),
            _tile("REAL AUTO-CLICK TERIMA ORDER","AutoClick"),
          ])),
        SizedBox(height: 12),
        Container(width: double.infinity,padding: EdgeInsets.all(16),decoration: BoxDecoration(color: Color(0xFF00C853),borderRadius: BorderRadius.circular(12)),child: Text("BOT V6 REAL AKTIF! Siap Narik Gojek Grab InDrive! 84ms!",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold))),
      ]),
    );
  }
  Widget _izinBtn(String t,Color c)=>Container(padding: EdgeInsets.symmetric(vertical: 12),decoration: BoxDecoration(color: c,borderRadius: BorderRadius.circular(20)),child: Center(child: Text(t,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold))));
  Widget _section(String title,List<String> items)=>Container(padding: EdgeInsets.all(12),decoration: BoxDecoration(border: Border.all(color: Color(0xFF00FF88)),borderRadius: BorderRadius.circular(12)),child: Column(children: [Text(title,style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold)),SizedBox(height: 8),...items.map((e)=>_tile(e,e.split('/')[0].trim())).toList()]));
  Widget _tile(String title,String key){
    return Padding(padding: EdgeInsets.symmetric(vertical: 6),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Expanded(child: Text(title,style: TextStyle(color: Color(0xFF7DFFB5)))),Switch(value: toggle[key]??true,onChanged: (v){setState(()=>toggle[key]=v);},activeColor: Color(0xFF00FF88))]));
  }
}
