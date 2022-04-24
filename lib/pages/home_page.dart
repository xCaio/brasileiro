import 'package:brasileiro/pages/time_page.dart';

import '../models/time.dart';
import 'home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({ Key? key }) : super(key: key);
  var controller;

  @override
  void initState() {
    super.initState();

     controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Brasileirão"),
        ),
      ),
      body: ListView.separated(
        itemCount: controller.tabela.length,
        itemBuilder: (BuildContext context, int time){
        final List<Time> tabela = controller.tabela;
        
        return ListTile(
          leading: Image.network(tabela[time].brasao),
          title: Text(tabela[time].nome),
          trailing: Text(tabela[time].pontos.toString()
          ),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (_)=> TimePage(
                key: Key(tabela[time].nome), 
                time: tabela[time],
                ),
              ),
            );
          },
        );
        }, 
        separatorBuilder: (_,__) => Divider(), 
      ),
    );
  }
}