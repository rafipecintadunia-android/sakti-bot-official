import 'package:flutter/material.dart';
import 'dart:async';
void main(){runApp(MaterialApp(debugShowCheckedModeBanner:false,home:HackerBot()));}
class HackerBot extends StatefulWidget{@override _HackerBotState createState()=>_HackerBotState();}
class _HackerBotState extends State<HackerBot>{
double speed=84; late Timer t;
bool acc=false,over=false,bg=false;
bool goRide=true,goFood=true,grab=true,shopee=true,maxim=true,inDrive=true,inBike=true;
bool radar=true,ping=true,sort=true,perKm=true,music=true;
@override void initState(){super.initState();t=Timer.periodic(Duration(milliseconds:250),(x){setState(()=>speed=60+(DateTime.now().millisecond%38));});}
@override void dispose(){t.cancel();super.dispose();}
Widget sw(String txt,bool val,Function(bool) on){
return Padding(padding:EdgeInsets.symmetric(vertical:3),child:Row(children:[Expanded(child:Text(txt,style:TextStyle(color:Colors.greenAccent,fontFamily:'monospace',fontSize:12))),Switch(value:val,activeColor:Colors.greenAccent,inactiveThumbColor:Colors.grey,onChanged:on)]));
}
@override Widget build(BuildContext c){
return Scaffold(
backgroundColor:Colors.black,
appBar:AppBar(backgroundColor:Colors.black,title:Row(children:[Icon(Icons.terminal,color:Colors.greenAccent),SizedBox(width:8),Text('SAKTI BOT V5 HACKER PRO',style:TextStyle(color:Colors.greenAccent,fontFamily:'monospace',fontSize:13,fontWeight:FontWeight.bold))]),centerTitle:false),
body:ListView(padding:EdgeInsets.all(10),children:[
// HACKER HEADER
Container(padding:EdgeInsets.all(10),decoration:BoxDecoration(color:Color(0xFF0A1F0A),borderRadius:BorderRadius.circular(8),border:Border.all(color:Colors.greenAccent)),child:Column(children:[
Text('[ ROOT ACCESS GRANTED ]',style:TextStyle(color:Colors.greenAccent,fontFamily:'monospace',fontWeight:FontWeight.bold)),
Text('> Bot Active... Scanning Orders...',style:TextStyle(color:Colors.green,fontFamily:'monospace',fontSize:10)),
SizedBox(height:6),
Row(mainAxisAlignment:MainAxisAlignment.center,children:[
Icon(Icons.music_note,color:music?Colors.greenAccent:Colors.grey,size:16),
Text(music?' DJ-OJOL-VIRAL.mp3 PLAYING':' MUSIC OFF',style:TextStyle(color:music?Colors.greenAccent:Colors.grey,fontSize:10,fontFamily:'monospace')),
Switch(value:music,activeColor:Colors.greenAccent,onChanged:(v){setState(()=>music=v);}),
])
])),
SizedBox(height:10),
// IZIN WAJIB - 3 TOMBOL AKTIF
Container(padding:EdgeInsets.all(10),decoration:BoxDecoration(color:Color(0xFF111111),borderRadius:BorderRadius.circular(10),border:Border.all(color:acc&&over&&bg?Colors.green:Colors.amber,width:1.5)),child:Column(children:[
Text('IZIN WAJIB AUTO KLIK - HACKER MODE',style:TextStyle(color:Colors.amber,fontFamily:'monospace',fontWeight:FontWeight.bold,fontSize:11)),
Text(acc&&over&&bg?'[✓] SEMUA AKSES DIBERIKAN - BOT JALAN DIBALIK LAYAR':'[!] KLIK 3 IZIN UNTUK AKTIFKAN BACKGROUND SERVICE',style:TextStyle(color:acc&&over&&bg?Colors.greenAccent:Colors.white54,fontSize:9,fontFamily:'monospace'),textAlign:TextAlign.center),
SizedBox(height:8),
Row(children:[
Expanded(child:ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:acc?Colors.green:Colors.red.shade800),onPressed:(){setState(()=>acc=true);ScaffoldMessenger.of(c).showSnackBar(SnackBar(content:Text('AKSESIBILITAS AKTIF - BOT BISA AUTO KLIK'),backgroundColor:Colors.green));},child:Text(acc?'AKTIF ✅':'AKSES',style:TextStyle(fontSize:9)))),
SizedBox(width:5),
Expanded(child:ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:over?Colors.green:Colors.blue.shade800),onPressed:(){setState(()=>over=true);ScaffoldMessenger.of(c).showSnackBar(SnackBar(content:Text('OVERLAY AKTIF - TAMPIL DI ATAS APLIKASI'),backgroundColor:Colors.blue));},child:Text(over?'AKTIF ✅':'OVERLAY',style:TextStyle(fontSize:9)))),
SizedBox(width:5),
Expanded(child:ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:bg?Colors.green:Colors.orange.shade800),onPressed:(){setState(()=>bg=true);ScaffoldMessenger.of(c).showSnackBar(SnackBar(content:Text('BACKGROUND SERVICE AKTIF - JALAN DIBALIK LAYAR'),backgroundColor:Colors.green));},child:Text(bg?'AKTIF ✅':'BACKGROUND',style:TextStyle(fontSize:9)))),
])
])),
SizedBox(height:10),
// LAYANAN OJOL + INDRIVE BARU
Container(padding:EdgeInsets.all(10),decoration:BoxDecoration(color:Color(0xFF1A0F0F),borderRadius:BorderRadius.circular(10),border:Border.all(color:Colors.green.shade900)),child:Column(children:[
Text('LAYANAN OJOL - PILIH ( + INDRIVE )',style:TextStyle(color:Colors.yellowAccent,fontFamily:'monospace',fontWeight:FontWeight.bold,fontSize:11)),
sw('GoRide / Comfort',goRide,(v){setState(()=>goRide=v);}),
sw('GoFood / GoMart',goFood,(v){setState(()=>goFood=v);}),
sw('GrabBike / Food',grab,(v){setState(()=>grab=v);}),
sw('ShopeeFood / Maxim',shopee,(v){setState(()=>shopee=v);}),
sw('Maxim Bike / Car',maxim,(v){setState(()=>maxim=v);}),
sw('inDrive Kota [NEW]',inDrive,(v){setState(()=>inDrive=v);}),
sw('inDrive Bike / Kurir [NEW]',inBike,(v){setState(()=>inBike=v);}),
])),
Container(margin:EdgeInsets.only(top:10),padding:EdgeInsets.all(10),decoration:BoxDecoration(color:Color(0xFF0F1A0F),borderRadius:BorderRadius.circular(10),border:Border.all(color:Colors.green.shade900)),child:Column(children:[
Text('RADAR & FILTER NYANTOL - HACKER PRO',style:TextStyle(color:Colors.yellowAccent,fontFamily:'monospace',fontWeight:FontWeight.bold,fontSize:11)),
sw('RADAR MODE - Scan Order Terus',radar,(v){setState(()=>radar=v);}),
Padding(padding:EdgeInsets.symmetric(vertical:4),child:Text('> Speed: ${speed.toInt()} ms - Mode Auto Colok [SUPER CEPAT]',style:TextStyle(color:Colors.greenAccent,fontFamily:'monospace',fontWeight:FontWeight.bold,fontSize:11))),
sw('Auto Ping Anti Delay',ping,(v){setState(()=>ping=v);}),
sw('Autobid Sortir Price',sort,(v){setState(()=>sort=v);}),
sw('PerKM V2 + inDrive Filter',perKm,(v){setState(()=>perKm=v);}),
])),
SizedBox(height:12),
SizedBox(width:double.infinity,height:52,child:ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:acc&&over&&bg?Colors.greenAccent:Colors.grey.shade800),onPressed:(){
if(!acc||!over||!bg){ScaffoldMessenger.of(c).showSnackBar(SnackBar(content:Text('AKTIFKAN 3 IZIN DULU!'),backgroundColor:Colors.red));return;}
ScaffoldMessenger.of(c).showSnackBar(SnackBar(content:Text('BOT V5 HACKER PRO AKTIF DIBALIK LAYAR! Gojek Grab Shopee inDrive READY!'),backgroundColor:Colors.green));
},child:Text(acc&&over&&bg?'[ EXECUTE ] AKTIFKAN BOT HACKER':'AKTIFKAN 3 IZIN DULU',style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,fontFamily:'monospace',fontSize:12)))),
Center(child:Padding(padding:EdgeInsets.only(top:8),child:Text(bg?'[●] BOT RUNNING BACKGROUND - READY NARIK':'[○] BOT STANDBY',style:TextStyle(color:bg?Colors.greenAccent:Colors.white38,fontFamily:'monospace',fontSize:10)))),
]),
);
}
}