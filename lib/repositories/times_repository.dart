import '../models/time.dart';
import '../models/titulo.dart';
import 'package:flutter/material.dart';


class TimesRepository{
  final List<Time> _times = [];

  get times => this._times;


  void addTitulo({Time? time, Titulo? titulo}) {
    time!.titulos.add(titulo!);
  }

  TimesRepository(){
    _times.addAll([
      Time(
        brasao: 'https://e.imguol.com/futebol/brasoes/40x40/atletico-mg.png', 
        nome: 'Atletico-MG', 
        pontos: 60,
        cor: Colors.black
      ),
      Time(
        brasao: 'https://e.imguol.com/futebol/brasoes/40x40/flamengo.png', 
        nome: 'Flamengo', 
        pontos: 57,
        cor: Colors.red[900]
      ),
      Time(
        brasao: 'https://e.imguol.com/futebol/brasoes/40x40/corinthians.png', 
        nome: 'Corinthians', 
        pontos: 55,
        cor: Colors.white30
      ),
      Time(
        brasao: 'https://e.imguol.com/futebol/brasoes/40x40/cruzeiro.png', 
        nome: 'Cruzeiro', 
        pontos: 50,
        cor: Colors.blue
      ),
      Time(
        brasao: 'https://e.imguol.com/futebol/brasoes/40x40/palmeiras.png', 
        nome: 'Palmeiras', 
        pontos: 50,
        cor: Colors.green
      ),
      Time(
        brasao: 'https://e.imguol.com/futebol/brasoes/40x40/gremio.png', 
        nome: 'Grêmio', 
        pontos: 49,
        cor: Colors.blue
      ),
      Time(
        brasao: 'https://e.imguol.com/futebol/brasoes/40x40/santos.png', 
        nome: 'Santos', 
        pontos: 48,
        cor: Colors.black
      ),
      Time(
        brasao: 'https://e.imguol.com/futebol/brasoes/40x40/fluminense.png', 
        nome: 'Fluminense', 
        pontos: 48,
        cor: Colors.green
      ),
      Time(
        brasao: 'https://e.imguol.com/futebol/brasoes/40x40/sport.png', 
        nome: 'Sport', 
        pontos: 30,
        cor: Colors.red[900]
      ),


    ]);
  }

}