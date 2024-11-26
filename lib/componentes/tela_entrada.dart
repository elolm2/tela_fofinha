import 'package:flutter/material.dart';
import 'package:tela_cadastro/componentes/criar_conta.dart';
import 'package:tela_cadastro/componentes/tela_inicial.dart';

class TelaEntrada extends StatelessWidget {
  const TelaEntrada({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(139, 0, 0, 1.0),
        ),
        child: Column(
         children: [
          Padding(
            padding: const EdgeInsets.only(top: 150.0), 
            child: Image.asset(
              "imagens/natal.png",
              height: 150,
              width: 150,
              ),
            ),
         
          Text('Seja bem vindo!!', style: TextStyle(
            fontSize: 35,
            color: Colors.white,
            fontFamily: 'PlayfairDisplay', fontStyle: FontStyle.italic, 
          ),),


          SizedBox(height: 30,),    // espaçamento do texto e o botao
             GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TelaInicial()));
            },
           child: Container(
            // botao 1
            height: 30,
            width: 200,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white),
            ),
            child: Center(child: Text('Entrar', style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),),
          ),
        ),


        SizedBox(height: 30,),   // espaçamento do texto e o botao
            GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CriarConta()));
            },
            child: Container(
              // botao 2
              height: 30,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white),
              ),
              child: Center(child: Text('Faça login', style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),),
            ),
          ),
         ],
        ),
      ),      
    );
  }
}