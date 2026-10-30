import 'package:flutter/material.dart';
import 'dart:async';
void main()=>runApp(MaterialApp(debugShowCheckedModeBanner:false,home:Login()));
class Login extends StatelessWidget{
@override Widget build(BuildContext context){return Scaffold(backgroundColor:Color(0xFF1A3A4F),body:Center(child:Padding(padding:EdgeInsets.all(24),child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[Icon(Icons.shield,size:80,color:Colors.amber),Text('SAKTI BOT V3',style:TextStyle(color:Colors.white,fontSize:22,fontWeight:FontWeight.bold)),Text('AUTO NARIK ORDER',style:TextStyle(color:Colors.greenAccent)),SizedBox(height:30),ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:Colors.amber,minimumSize:Size(double.infinity,50)),onPressed:(){Navigator.pushReplacement(context,MaterialPageRoute(builder:(_)=>Home()));},child:Text('LOGIN MASUK',style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold)))]))));}
}
class Home extends StatefulWidget{@override _HomeState createState()=>_HomeState();}
class _HomeState extends State<Home>{
double speed=87; late Timer t;
bool a=true,b=true,c=false,d=true,r=false;
bool s1=true,s2=true,s3=true;
@override void initState(){super.initState();t=Timer.periodic(Duration(milliseconds:300),(_){setState(()=>speed=60+(DateTime.now().millisecond%35));});}
@override void dispose(){t.cancel();super.dispose();}
Widget sw(String tt,bool v,Function(bool) f){return Row(children:[Expanded(child:Text(tt,style:TextStyle(color:Colors.white,fontSize:12))),Switch(value:v,activeColor:Colors.greenAccent,onChanged:f)]);}
@override Widget build(BuildContext context){
return Scaffold(backgroundColor:Color(0xFF1A3A4F),appBar:AppBar(backgroundColor:Color(0xFF1A3A4F),title:Text('SAKTI BOT V3 OJOL READY',style:TextStyle(fontSize:13,color:Colors.white))),
body:ListView(padding:EdgeInsets.all(12),children:[
Container(padding:EdgeInsets.all(12),decoration:BoxDecoration(color:Colors.black54,borderRadius:BorderRadius.circular(12),border:Border.all(color:Colors.amber)),child:Column(children:[Text('IZIN WAJIB AUTO KLIK',style:TextStyle(color:Colors.amber,fontWeight:FontWeight.bold,fontSize:11)),Text('Aktifkan ini biar bisa narik orderan otomatis',style:TextStyle(color:Colors.white54,fontSize:10)) ])),
SizedBox(height:10),
Container(padding:EdgeInsets.all(12),decoration:BoxDecoration(color:Color(0xFF6B2E1F),borderRadius:BorderRadius.circular(12)),child:Column(children:[Text('LAYANAN OJOL - PILIH',style:TextStyle(color:Colors.yellowAccent,fontWeight:FontWeight.bold)),sw('GoRide / Comfort',a,(v)=>setState(()=>a=v)),sw('GoFood / GoMart',b,(v)=>setState(()=>b=v)),sw('GrabBike / Food',c,(v)=>setState(()=>c=v)),sw('ShopeeFood / Maxim',d,(v)=>setState(()=>d=v)) ])),
Container(margin:EdgeInsets.only(top:10),padding:EdgeInsets.all(12),decoration:BoxDecoration(color:Color(0xFF6B2E1F),borderRadius:BorderRadius.circular(12)),child:Column(children:[Text('RADAR & FILTER NYANTOL',style:TextStyle(color:Colors.yellowAccent,fontWeight:FontWeight.bold)),sw('RADAR MODE - Scan Order Terus',r,(v)=>setState(()=>r=v)),Text('Speed: ${speed.toInt()} ms - Mode Auto Colok',style:TextStyle(color:Colors.greenAccent)),sw('Auto Ping Anti Delay',s1,(v)=>setState(()=>s1=v)),sw('Autobid Sortir Price',s2,(v)=>setState(()=>s2=v)),sw('PerKM V2 SUPER CEPAT',s3,(v)=>setState(()=>s3=v)) ])),
SizedBox(height:15),
ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:Colors.amber,minimumSize:Size(double.infinity,55)),onPressed:(){ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('BOT V3 AKTIF! Layanan: ${a?'GoRide ':''}${b?'GoFood ':''} - Siap Narik!'),backgroundColor:Colors.green));},child:Text('SIMPAN & AKTIFKAN BOT',style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold))),
]));
}
}