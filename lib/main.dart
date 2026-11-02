import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0A0A),
      ),
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
  final List<String> _logs = [">> SAKTI BOT V6 REAL - 2026", ">> System Ready..."];
  final ScrollController _scrollCtrl = ScrollController();

  void _addLog(String msg) {
    final time = TimeOfDay.now().format(context);
    setState(() => _logs.add("[$time] $msg"));
    Future.delayed(const Duration(milliseconds: 100), () {
      if (_scrollCtrl.hasClients) {
        _scrollCtrl.jumpTo(_scrollCtrl.position.maxScrollExtent);
      }
    });
  }

  void toggleBot() {
    setState(() => isBotActive = !isBotActive);
    if (isBotActive) {
      _addLog("BOT START - AUTO TRADING AKTIF");
      _addLog("Menganalisa market... Bid Orderan ON");
    } else {
      _addLog("BOT STOP - Berhenti");
    }
  }

  // Ini yang kepotong di kode kamu kemarin
  Widget _fiturCard(String title, IconData icon, bool active) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        border: Border.all(color: active ? const Color(0xFF00FF88) : Colors.grey.shade800),
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFF111111),
      ),
      child: Column(
        children: [
          Icon(icon, color: active ? const Color(0xFF00FF88) : Colors.grey),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Container(
            width: 8, height: 8,
            decoration: BoxDecoration(
              color: active ? const Color(0xFF00FF88) : Colors.red,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: App 