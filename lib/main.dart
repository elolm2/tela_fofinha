import 'package:flutter/material.dart';
import 'package:tela_cadastro/componentes/tela_entrada.dart';
import 'package:tela_cadastro/componentes/tela_inicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaEntrada(),
    );
  }
}       