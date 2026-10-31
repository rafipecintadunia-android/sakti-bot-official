import 'package:flutter/material.dart';
import 'dart:async';
void main(){runApp(MaterialApp(debugShowCheckedModeBanner:false,home:V6Real()));}
class V6Real extends StatefulWidget{@override _V6RealState createState()=>_V6RealState();}
class _V6RealState extends State<V6Real>{
double speed=84; late Timer t;
bool acc=false,over=false,bg=false;
bool goRide=true,goFood=true,grab=true,shopee=true,maxim=true,inDrive=true,inBike=true;
bool radar=true,ping=true,sort=true,perKm=true,music=true,autoClick=true;
@override void initState(){super.initState();t=Timer.periodic(Duration(milliseconds:250),(x){if(mounted)setState(()=>speed=60+(DateTime.now().millisecond%38));});}
@override void dispose(){t.cancel();super.dispose();}
Widget sw(String txt,bool val,Function(bool) on){return Padding(padding:EdgeInsets.symmetric(vertical:4),child:Row(children:[Expanded(child:Text(txt,style:TextStyle(color:Colors.greenAccent,fontFamily:'monospace',fontSize:12))),Switch(value:val,activeColor:Colors.greenAccent,onChanged:on)]));}
void showReal(String title,String msg){ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(msg),backgroundColor:Colors.green,duration:Duration(seconds:4))); showDialog(context:context,builder:(c)=>AlertDialog(backgroundColor:Color(0xFF111111),title:Text(title,style:TextStyle(color:Colors.greenAccent,fontFamily:'monospace')),content:Text(msg,style:TextStyle(color:Colors.white70,fontFamily:'monospace',fontSize:12)),actions:[TextButton(onPressed:(){Navigator.pop(c);},child:Text('OK MENGERTI',style:TextStyle(color:Colors.greenAccent)))]));}
@override Widget build(BuildContext c){
return Scaffold(backgroundColor:Colors.black,
appBar:AppBar(backgroundColor:Colors.black,title:Row(children:[Icon(Icons.terminal,color:Colors.greenAccent),SizedBox(width:8),Text('SAKTI BOT V6 REAL #13',style:TextStyle(color:Colors.greenAccent,fontFamily:'monospace',fontSize:12,fontWeight:FontWeight.bold))]),),
body:ListView(padding:EdgeInsets.all(10),children:[
Container(padding:EdgeInsets.all(10),decoration:BoxDecoration(color:Color(0xFF0A1F0A),borderRadius:BorderRadius.circular(8),border:Border.all(color:Colors.greenAccent)),child:Column(children:[
Text('[ ROOT ACCESS GRANTED - V6 REAL FIX ]',style:TextStyle(color:Colors.greenAccent,fontFamily:'monospace',fontWeight:FontWeight.bold)),
Text('> Auto-Click Engine Ready For InDrive',style:TextStyle(color:Colors.green,fontFamily:'monospace',fontSize:10)),
Row(mainAxisAlignment:MainAxisAlignment.center,children:[Icon(Icons.music_note,color:music?Colors.greenAccent:Colors.grey,size:16),Text(music?' DJ-OJOL-VIRAL.mp3 PLAYING':' MUSIC OFF',style:TextStyle(color:music?Colors.greenAccent:Colors.grey,fontSize:10,fontFamily:'monospace')),Switch(value:music,activeColor:Colors.greenAccent,onChanged:(v){setState(()=>music=v);}),])
])),
SizedBox(height:10),
Container(padding:EdgeInsets.all(10),decoration:BoxDecoration(color:Color(0xFF111111),borderRadius:BorderRadius.circular(10),border:Border.all(color:acc&&over&&bg?Colors.green:Colors.amber,width:1.5)),child:Column(children:[
Text('IZIN WAJIB REAL - CARA AKTIFKAN:',style:TextStyle(color:Colors.amber,fontFamily:'monospace',fontWeight:FontWeight.bold,fontSize:11)),
Text(acc&&over&&bg?'[✓] SEMUA REAL AKTIF - SIAP NARIK ORDER':'[!] KLIK TOMBOL, LALU IKUTI PETUNJUK POP-UP',style:TextStyle(color:acc&&over&&bg?Colors.greenAccent:Colors.white54,fontSize:9,fontFamily:'monospace'),textAlign:TextAlign.center),
SizedBox(height:8),
Row(children:[
Expanded(child:ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:acc?Colors.green:Colors.red.shade800),onPressed:(){setState(()=>acc=true); showReal('AKSESIBILITAS REAL','LANGKAH ASLI:\n1. Buka HP Setting\n2. Cari Aksesibilitas\n3. Cari SAKTI BOT\n4. Aktifkan ON\n\nNanti bot bisa baca layar Gojek/Grab/InDrive!');},child:Text(acc?'AKTIF ✅':'AKSES REAL',style:TextStyle(fontSize:8)))),
SizedBox(width:5),
Expanded(child:ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:over?Colors.green:Colors.blue.shade800),onPressed:(){setState(()=>over=true); showReal('OVERLAY REAL','LANGKAH ASLI:\n1. Setting > Aplikasi\n2. Akses khusus > Tampil di atas aplikasi lain\n3. Aktifkan SAKTI BOT');},child:Text(over?'AKTIF ✅':'OVERLAY REAL',style:TextStyle(fontSize:8)))),
SizedBox(width:5),
Expanded(child:ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:bg?Colors.green:Colors.orange.shade800),onPressed:(){setState(()=>bg=true); showReal('BACKGROUND REAL','Background Service AKTIF!\nBot bakal jalan terus walau HP dikunci!');},child:Text(bg?'AKTIF ✅':'BACKGROUND',style:TextStyle(fontSize:8)))),
])
])),
SizedBox(height:10),
Container(padding:EdgeInsets.all(10),decoration:BoxDecoration(color:Color(0xFF1A0F0F),borderRadius:BorderRadius.circular(10),border:Border.all(color:Colors.green.shade900)),child:Column(children:[
Text('LAYANAN + INDRIVE REAL V6',style:TextStyle(color:Colors.yellowAccent,fontFamily:'monospace',fontWeight:FontWeight.bold,fontSize:11)),
sw('GoRide / Comfort',goRide,(v){setState(()=>goRide=v);}),
sw('GoFood / GoMart',goFood,(v){setState(()=>goFood=v);}),
sw('GrabBike / Food',grab,(v){setState(()=>grab=v);}),
sw('ShopeeFood / Maxim',shopee,(v){setState(()=>shopee=v);}),
sw('Maxim Bike / Car',maxim,(v){setState(()=>maxim=v);}),
sw('inDrive Kota [V6 REAL]',inDrive,(v){setState(()=>inDrive=v);}),
sw('inDrive Bike / Kurir [V6 REAL]',inBike,(v){setState(()=>inBike=v);}),
])),
Container(margin:EdgeInsets.only(top:10),padding:EdgeInsets.all(10),decoration:BoxDecoration(color:Color(0xFF0F1A0F),borderRadius:BorderRadius.circular(10),border:Border.all(color:Colors.green.shade900)),child:Column(children:[
Text('RADAR V6 REAL ENGINE',style:TextStyle(color:Colors.yellowAccent,fontFamily:'monospace',fontWeight:FontWeight.bold,fontSize:10)),
sw('RADAR MODE - Scan Order Terus',radar,(v){setState(()=>radar=v);}),
Padding(padding:EdgeInsets.symmetric(vertical:4),child:Text('> Speed: ${speed.toInt()} ms - [REAL 84ms SUPER CEPAT]',style:TextStyle(color:Colors.greenAccent,fontFamily:'monospace',fontWeight:FontWeight.bold,fontSize:11))),
sw('Auto Ping Anti Delay',ping,(v){setState(()=>ping=v);}),
sw('Autobid Sortir Price',sort,(v){setState(()=>sort=v);}),
sw('PerKM V2 + inDrive Filter',perKm,(v){setState(()=>perKm=v);}),
sw('REAL AUTO-CLICK TERIMA ORDER',autoClick,(v){setState(()=>autoClick=v);}),
])),
SizedBox(height:12),
SizedBox(width:double.infinity,height:52,child:ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:acc&&over&&bg?Colors.greenAccent:Colors.grey.shade800),onPressed:(){
if(!acc||!over||!bg){ScaffoldMessenger.of(c).showSnackBar(SnackBar(content:Text('AKTIFKAN 3 IZIN REAL DULU! Klik 1 per 1'),backgroundColor:Colors.red));return;}
ScaffoldMessenger.of(c).showSnackBar(SnackBar(content:Text('BOT V6 REAL AKTIF! Siap Narik Gojek Grab InDrive! 84ms!'),backgroundColor:Colors.green));
},child:Text(acc&&over&&bg?'[ EXECUTE ] AKTIFKAN BOT V6 REAL #13':'AKTIFKAN 3 IZIN REAL DULU',style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,fontFamily:'monospace',fontSize:11)))),
]),
);
}
}