import 'package:flutter/material.dart';

class CriarConta extends StatelessWidget {
  const CriarConta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      // tomar a tela toda
      body: Stack(
        children:[
          Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(139, 0, 0, 1.0)
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 22),   //espaco em cima
          child: Text('Crie sua\nConta', style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontFamily: 'PlayfairDisplay', fontStyle: FontStyle.italic, 
          ),),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 150.0),
        child: Container(
          decoration: BoxDecoration(
             color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),),
          ),
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // GMAIL
                // permite que os usuarios digitem
                SizedBox(height: 25,),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.check, color: Colors.grey,),
                    label: Text('Nome completo', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(139, 0, 0, 1.0)
                    ),),
                  ),
                ),

              // SENHA
                SizedBox(height: 25,),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off, color: Colors.grey,),
                    label: Text('Gmail', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(139, 0, 0, 1.0)
                    ),),
                  ),
                ),


              SizedBox(height: 25,),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off, color: Colors.grey,),
                    label: Text('Senha', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(139, 0, 0, 1.0)
                    ),),
                  ),
                ),


                SizedBox(height: 25,),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off, color: Colors.grey,),
                    label: Text('Confirmar senha', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(139, 0, 0, 1.0)
                    ),),
                  ),
                ),


                // BOTÃO
                SizedBox(height: 25,),
                Container(
                  height: 55,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  color: Color.fromRGBO(139, 0, 0, 1.0),
                  ),
                  child: Center(child: Text('Criar conta', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),),),
              ),

              // CRIAR CONTA
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.bottomRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Já tem uma conta?', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey 
                    ),),
                    Text('Entrar', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey 
                    ),),
                  ],
                ),
              ),
            ],
            ),
          ),
        ),
      ),

        ]
      )
    );






  }
}