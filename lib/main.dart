import 'package:flutter/material.dart';
import 'dart:async';
void main()=>runApp(MaterialApp(debugShowCheckedModeBanner:false,home:Login()));
class Login extends StatelessWidget{
  @override Widget build(c)=>Scaffold(backgroundColor:Color(0xFF1A3A4F),body:Center(child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[
    Icon(Icons.shield,size:80,color:Colors.amber),Text('SAKTI BOT OFFICIAL',style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:20)),
    SizedBox(height:30),SizedBox(width:300,child:TextField(decoration:InputDecoration(labelText:'Nomor HP',filled:true,fillColor:Color(0xFF2C4A5F),border:OutlineInputBorder(borderRadius:BorderRadius.circular(12))))),
    SizedBox(height:12),SizedBox(width:300,child:TextField(obscureText:true,decoration:InputDecoration(labelText:'Sandi',filled:true,fillColor:Color(0xFF2C4A5F),border:OutlineInputBorder(borderRadius:BorderRadius.circular(12))))),
    SizedBox(height:20),ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:Color(0xFF7A2A1A),minimumSize:Size(300,50)),onPressed:()=>Navigator.pushReplacement(c,MaterialPageRoute(builder:(_)=>Home())),child:Text('LOGIN - MASUK'))
  ]))));
}
class Home extends StatefulWidget{ @override _HomeState createState()=>_HomeState(); }
class _HomeState extends State<Home>{
  double harga=1500,speed=87; late Timer t;
  @override void initState(){super.initState(); t=Timer.periodic(Duration(milliseconds:400),(_){setState(()=>speed=65+(DateTime.now().millisecond%35));});}
  @override void dispose(){t.cancel(); super.dispose();}
  Widget card(String j,List<String> isi)=>Container(margin:EdgeInsets.only(bottom:12),padding:EdgeInsets.all(12),decoration:BoxDecoration(color:Color(0xFF6B2E1F),borderRadius:BorderRadius.circular(16)),child:Column(children:[Text(j,style:TextStyle(color:Colors.yellowAccent,fontWeight:FontWeight.bold)),SizedBox(height:8),...isi.map((e)=>Row(children:[CircleAvatar(radius:10,child:Text('?',style:TextStyle(fontSize:8))),SizedBox(width:8),Expanded(child:Text(e,style:TextStyle(color:Colors.white,fontSize:12))),Switch(value:true,activeColor:Colors.blue,onChanged:(_){})])).toList()]));
  @override Widget build(c)=>Scaffold(backgroundColor:Color(0xFF1A3A4F),appBar:AppBar(backgroundColor:Color(0xFF1A3A4F),title:Text('SAKTI BOT OFFICIAL - New Version')),body:Stack(children:[
    ListView(padding:EdgeInsets.fromLTRB(12,12,12,80),children:[
      card('BACKSOUND & NOTIFICATION',['Sound Notification (Lagu 1)','Auto Ping Network','Notification Speak']),
      card('AUTOBID POP UP OPTIONS',['Autobid Sortir (Khusus Kurir)','Autobid Sortir Price No Skip','Autobid Sortir Price (Skip)','Autobid UpPrice Settings']),
      card('AUTOBID POP UP | UP PRICE PERKM',['Autobid PerKm Original','Autobid perKm V2','Tolak pesanan dengan deskripsi']),
      Container(padding:EdgeInsets.all(12),decoration:BoxDecoration(color:Color(0xFF6B2E1F),borderRadius:BorderRadius.circular(12)),child:Column(children:[Text('Minimal Rating: 1.0 | Harga PerKm 1500',style:TextStyle(color:Colors.amber,fontSize:11)),Slider(value:harga,min:500,max:5000,onChanged:(v)=>setState(()=>harga=v))]))
    ]),
    Positioned(left:12,top:20,child:Container(padding:EdgeInsets.all(10),decoration:BoxDecoration(color:Colors.black87,borderRadius:BorderRadius.circular(12)),child:Column(children:[Icon(Icons.shield,color:Colors.orange),Text('Speed: ${speed.toInt()} ms',style:TextStyle(color:Colors.amber,fontSize:11,fontWeight:FontWeight.bold)),Container(padding:EdgeInsets.symmetric(horizontal:8),decoration:BoxDecoration(border:Border.all(color:Colors.white),borderRadius:BorderRadius.circular(10)),child:Text('AUTO',style:TextStyle(color:Colors.greenAccent,fontSize:10)))])))
  ]));
}