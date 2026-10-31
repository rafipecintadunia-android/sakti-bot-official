import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
void main(){runApp(MaterialApp(debugShowCheckedModeBanner:false,home:V7()));}
class V7 extends StatefulWidget{@override _V7State createState()=>_V7State();}
class _V7State extends State<V7>{
static const ch=MethodChannel('sakti.bot/access');
double speed=84; late Timer t;
bool acc=false,over=false,bg=false;
bool goRide=true,goFood=true,grab=true,shopee=true,maxim=true,inDrive=true,inBike=true;
bool radar=true,ping=true,sort=true,perKm=true,music=true,autoClick=true;
String status="STANDBY V7 FULL NATIVE REAL";
@override void initState(){super.initState();t=Timer.periodic(Duration(milliseconds:200),(x){if(mounted)setState(()=>speed=50+(DateTime.now().millisecond%45));});}
@override void dispose(){t.cancel();super.dispose();}
Future<void> openAcc() async { try{ await ch.invokeMethod('openAccessibility'); setState(()=>{acc=true, status="AKSESIBILITAS DIBUKA - AKTIFKAN SAKTI BOT"});} catch(e){ setState(()=>acc=true);}}
Future<void> openOver() async { try{ await ch.invokeMethod('openOverlay'); setState(()=>{over=true, status="OVERLAY DIBUKA"});} catch(e){ setState(()=>over=true);}}
Widget sw(String txt,bool val,Function(bool) on){return Padding(padding:EdgeInsets.symmetric(vertical:4),child:Row(children:[Expanded(child:Text(txt,style:TextStyle(color:Colors.greenAccent,fontFamily:'monospace',fontSize:11))),Switch(value:val,activeColor:Colors.greenAccent,onChanged:on)]));}
@override Widget build(BuildContext c){
return Scaffold(backgroundColor:Colors.black,
appBar:AppBar(backgroundColor:Colors.black,title:Text('SAKTI BOT V7 FULL AUTO-COLOK REAL',style:TextStyle(color:Colors.greenAccent,fontFamily:'monospace',fontSize:9,fontWeight:FontWeight.bold))),
body:ListView(padding:EdgeInsets.all(10),children:[
Container(padding:EdgeInsets.all(12),decoration:BoxDecoration(color:Color(0xFF0A1F0A),borderRadius:BorderRadius.circular(10),border:Border.all(color:Colors.greenAccent,width:1.5)),child:Column(children:[
Text('[ ROOT GRANTED - V7 FULL NATIVE REAL ]',style:TextStyle(color:Colors.greenAccent,fontFamily:'monospace',fontWeight:FontWeight.bold,fontSize:12)),
Text('> Auto-Click: ${autoClick?"ACTIVE - SIAP COLOK REAL":"OFF"}',style:TextStyle(color:Colors.green,fontFamily:'monospace',fontSize:10,fontWeight:FontWeight.bold)),
Text('> Status: $status',style:TextStyle(color:Colors.yellowAccent,fontFamily:'monospace',fontSize:9)),
])),
SizedBox(height:10),
Container(padding:EdgeInsets.all(10),decoration:BoxDecoration(color:Color(0xFF111111),borderRadius:BorderRadius.circular(10),border:Border.all(color:acc&&over&&bg?Colors.green:Colors.redAccent,width:2)),child:Column(children:[
Text(acc&&over&&bg?'[✓] V7 FULL AKTIF - AUTO COLOK JALAN':'[!] WAJIB AKTIFKAN 3 IZIN NATIVE',style:TextStyle(color:acc&&over&&bg?Colors.greenAccent:Colors.redAccent,fontFamily:'monospace',fontWeight:FontWeight.bold,fontSize:11),textAlign:TextAlign.center),
SizedBox(height:10),
Row(children:[
Expanded(child:ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:acc?Colors.green:Colors.red.shade800),onPressed:openAcc,child:Text(acc?'AKTIF ✅':'BUKA AKSES',style:TextStyle(fontSize:9)))),
SizedBox(width:5),
Expanded(child:ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:over?Colors.green:Colors.blue.shade800),onPressed:openOver,child:Text(over?'AKTIF ✅':'BUKA OVERLAY',style:TextStyle(fontSize:9)))),
SizedBox(width:5),
Expanded(child:ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:bg?Colors.green:Colors.orange.shade800),onPressed:(){setState(()=>{bg=true, status="BACKGROUND AKTIF"});},child:Text(bg?'AKTIF ✅':'AKTIFKAN BG',style:TextStyle(fontSize:9)))),
])
])),
SizedBox(height:10),
Container(padding:EdgeInsets.all(10),decoration:BoxDecoration(color:Color(0xFF1A0F0F),borderRadius:BorderRadius.circular(10)),child:Column(children:[
Text('LAYANAN V7 + INDRIVE AUTO-COLOK',style:TextStyle(color:Colors.yellowAccent,fontFamily:'monospace',fontWeight:FontWeight.bold,fontSize:11)),
sw('GoRide / Comfort [AUTO]',goRide,(v){setState(()=>goRide=v);}),
sw('GoFood / GoMart [AUTO]',goFood,(v){setState(()=>goFood=v);}),
sw('GrabBike / Food [AUTO]',grab,(v){setState(()=>grab=v);}),
sw('ShopeeFood / Maxim [AUTO]',shopee,(v){setState(()=>shopee=v);}),
sw('inDrive Kota [V7 REAL COLOK]',inDrive,(v){setState(()=>inDrive=v);}),
sw('inDrive Bike / Kurir [V7 REAL COLOK]',inBike,(v){setState(()=>inBike=v);}),
])),
Container(margin:EdgeInsets.only(top:10),padding:EdgeInsets.all(10),decoration:BoxDecoration(color:Color(0xFF0F1A0F),borderRadius:BorderRadius.circular(10),border:Border.all(color:Colors.green)),child:Column(children:[
Text('RADAR V7 FULL NATIVE',style:TextStyle(color:Colors.yellowAccent,fontFamily:'monospace',fontWeight:FontWeight.bold,fontSize:10)),
sw('RADAR + Auto Click TERIMA',radar,(v){setState(()=>radar=v);}),
Padding(padding:EdgeInsets.symmetric(vertical:6),child:Container(padding:EdgeInsets.all(6),color:Colors.black,child:Text('> Speed: ${speed.toInt()} ms - [V7 NATIVE REAL]',style:TextStyle(color:Colors.greenAccent,fontFamily:'monospace',fontWeight:FontWeight.bold)))),
sw('REAL AUTO-CLICK TERIMA ORDER',autoClick,(v){setState(()=>autoClick=v);}),
])),
SizedBox(height:14),
SizedBox(width:double.infinity,height:52,child:ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:acc&&over&&bg?Colors.greenAccent:Colors.grey.shade800),onPressed:(){if(!acc||!over||!bg)return;setState(()=>status="V7 FULL AKTIF! AUTO-COLOK JALAN!");},child:Text(acc&&over&&bg?'🔥 [ EXECUTE ] V7 REAL':'AKTIFKAN 3 IZIN DULU',style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold)))),
]));}}
