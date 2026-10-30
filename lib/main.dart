import 'package:flutter/material.dart';
void main()=>runApp(const MaterialApp(debugShowCheckedModeBanner:false,home:SaktiBot()));
class SaktiBot extends StatefulWidget{const SaktiBot({super.key});@override State<SaktiBot> createState()=>_SaktiBotState();}
class _SaktiBotState extends State<SaktiBot>{
bool musik=true,sound=true,ping=true,speak=false;
bool sortir=true,sortNo=false,sortSkip=true,upSet=false;
bool perKm1=false,perKm2=false,tolak=false;
TextEditingController harga=TextEditingController(text:"1500");
@override Widget build(BuildContext context){
return Scaffold(backgroundColor:const Color(0xFF0F3A5C),
appBar:AppBar(backgroundColor:const Color(0xFF0F3A5C),elevation:0,title:Column(crossAxisAlignment:CrossAxisAlignment.start,children:const[Text("SAKTI BOT OFFICIAL",style:TextStyle(fontWeight:FontWeight.bold)),Text("New Version",style:TextStyle(color:Colors.yellow,fontSize:14))]),actions:[Container(margin:const EdgeInsets.all(12),padding:const EdgeInsets.symmetric(horizontal:20),decoration:BoxDecoration(color:const Color(0xFF4A0E0E),borderRadius:BorderRadius.circular(20),border:Border.all(color:Colors.white)),child:const Center(child:Text("GROUP",style:TextStyle(fontWeight:FontWeight.bold))))]),
body:SingleChildScrollView(padding:const EdgeInsets.all(12),child:Column(children:[
Container(width:90,height:90,decoration:BoxDecoration(shape:BoxShape.circle,border:Border.all(color:Colors.white,width:2),color:Colors.black),child:const Center(child:Text("SAKTI\nMOD",textAlign:TextAlign.center,style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold)))),
const SizedBox(height:8),const Text("Jumat | 30 Okt 2026 | 23:20:11",style:TextStyle(color:Colors.yellow,fontWeight:FontWeight.bold,fontSize:12)),
const SizedBox(height:8),const Text("TAMPILAN MODE PROFESIONAL",style:TextStyle(color:Colors.yellow,fontWeight:FontWeight.bold,fontSize:16)),
const SizedBox(height:12),
Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children:[_btn("BAHASA"),_btn("INFO"),_btn("MODE SIMPEL")]),
const SizedBox(height:16),
_box("BACKSOUND | NOTIFICATION",[
_row("Musik Latar Belakang",musik,(v)=>setState(()=>musik=v)),
_row("Sound Notification",sound,(v)=>setState(()=>sound=v)),
_row("Auto Ping Network",ping,(v)=>setState(()=>ping=v)),
_row("Notification Speak",speak,(v)=>setState(()=>speak=v)),
]),
_box("AUTOBID POP UP OPTIONS",[
_row("Autobid Sortir ( Khusus Kurir )",sortir,(v)=>setState(()=>sortir=v)),
_row("Autobid Sortir Price No Skip",sortNo,(v)=>setState(()=>sortNo=v)),
_row("Autobid Sortir Price ( Skip Jika Tidak Sesuai)",sortSkip,(v)=>setState(()=>sortSkip=v)),
_row("Autobid UpPrice Settings ( Motor | Mobil | Kurir )",upSet,(v)=>setState(()=>upSet=v)),
]),
_box("AUTOBID POP UP | UP PRICE PERKM",[
_row("Autobid PerKm ( Order Info Original )",perKm1,(v)=>setState(()=>perKm1=v)),
_row("Autobid perKm ( Order Info V2 )",perKm2,(v)=>setState(()=>perKm2=v)),
_row("Tolak pesanan dengan deskripsi",tolak,(v)=>setState(()=>tolak=v)),
const SizedBox(height:12),
const Text("Harga PerKm",style:TextStyle(color:Colors.yellow,fontWeight:FontWeight.bold)),
const SizedBox(height:6),
Container(color:Colors.white,padding:const EdgeInsets.symmetric(horizontal:12),child:TextField(controller:harga,textAlign:TextAlign.center,style:const TextStyle(color:Colors.black,fontWeight:FontWeight.bold),decoration:const InputDecoration(border:InputBorder.none))),
]),
const SizedBox(height:10),
Container(width:double.infinity,color:const Color(0xFF2A2A2A),padding:const EdgeInsets.all(8),child:RichText(text:const TextSpan(children:[TextSpan(text:"SAKTI BOT OFFICIAL ",style:TextStyle(color:Colors.orange,fontWeight:FontWeight.bold)),TextSpan(text:"saat ini Kamu berada di: ",style:TextStyle(color:Colors.white)),TextSpan(text:"Kecamatan Krem",style:TextStyle(color:Colors.cyan,fontWeight:FontWeight.bold))]))),
])));
}
Widget _btn(String t)=>Container(padding:const EdgeInsets.symmetric(horizontal:18,vertical:8),decoration:BoxDecoration(color:const Color(0xFF4A0E0E),borderRadius:BorderRadius.circular(20),border:Border.all(color:Colors.white)),child:Text(t,style:const TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:12)));
Widget _box(String title,List<Widget> childs)=>Container(margin:const EdgeInsets.only(bottom:14),padding:const EdgeInsets.all(12),decoration:BoxDecoration(color:const Color(0xFF5A1A0F),borderRadius:BorderRadius.circular(16),border:Border.all(color:Colors.white38)),child:Column(children:[Text(title,style:const TextStyle(color:Colors.yellow,fontWeight:FontWeight.bold,fontSize:14)),const SizedBox(height:12),...childs]));
Widget _row(String txt,bool val,Function(bool) on){return Padding(padding:const EdgeInsets.only(bottom:8),child:Row(children:[Container(width:24,height:24,decoration:BoxDecoration(shape:BoxShape.circle,color:Colors.white),child:const Center(child:Text("?",style:TextStyle(fontWeight:FontWeight.bold,fontSize:12)))),const SizedBox(width:8),Expanded(child:Text(txt,style:const TextStyle(color:Colors.white,fontSize:12))),Switch(value:val,onChanged:on,activeColor:Colors.blue)]));}
}
