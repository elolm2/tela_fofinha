import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

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
          padding: const EdgeInsets.only(top: 60.0, left: 22),   //espaco em cima
          child: Text('Olá,\nSeja bem vindo de volta!', style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontFamily: 'PlayfairDisplay', fontStyle: FontStyle.italic, 
          ),),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 200.0),
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
                // permite que os usuarios digitem
                SizedBox(height: 35,),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.check, color: Colors.grey,),
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
                SizedBox(height: 14,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('Esqueceu sua senha?', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Color.fromRGBO(139, 0, 0, 1.0),
                  ),),
                ),
                SizedBox(height: 50,),
                Container(
                  height: 55,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  color: Color.fromRGBO(139, 0, 0, 1.0),
                  ),
                  child: Center(child: Text('Entrar', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),),),
              ),
              SizedBox(height: 50,),
              Align(
                alignment: Alignment.bottomRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Não tem uma conta?', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey 
                    ),),
                    Text('Faça uma conta!', style: TextStyle(
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