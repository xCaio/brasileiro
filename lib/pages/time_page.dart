import 'package:flutter/material.dart';
import '../models/time.dart';

class TimePage extends StatefulWidget {
  Time time;
  TimePage({ Key? key, required this.time }) : super(key: key);

  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: widget.time.cor,
          title: Text(widget.time.nome),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.stacked_line_chart),
              text: 'Estatísticas',
            ),
            Tab(
              icon: Icon(Icons.emoji_events),
              text: 'Titulos',
            ),
          ],
          indicatorColor: Colors.white,
          ),
          
        ),
      ),
    );
  }
}