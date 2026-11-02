import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true).copyWith(scaffoldBackgroundColor: const Color(0xFF0A0A0A)),
      home: const SAKTIHome(),
    );
  }
}
class SAKTIHome extends StatefulWidget {
  const SAKTIHome({super.key});
  @override
  State<SAKTIHome> createState() => _SAKTIHomeState();
}
class _SAKTIHomeState extends State<SAKTIHome> {
  bool isBotActive = false;
  final List<String> logs = [">> SAKTI BOT V6 REAL - 2026", ">> System Ready..."];
  void toggleBot() {
    setState(() {
      isBotActive = !isBotActive;
      logs.add(isBotActive ? "BOT START" : "BOT STOP");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      appBar: AppBar(backgroundColor: Colors.black, title: const Text("SAKTI BOT V6 REAL 2026", style: TextStyle(color: Color(0xFF00FF88), fontWeight: FontWeight.bold)), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(isBotActive ? Icons.smart_toy : Icons.power_settings_new, size: 80, color: isBotActive ? const Color(0xFF00FF88) : Colors.grey),
            const SizedBox(height: 20),
            Text(isBotActive ? "BOT AKTIF" : "BOT NONAKTIF", style: TextStyle(color: isBotActive ? const Color(0xFF00FF88) : Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: isBotActive ? Colors.red : const Color(0xFF00FF88), padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15)),
              onPressed: toggleBot,
              child: Text(isBotActive ? "STOP BOT" : "JALANKAN SAKTI", style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}