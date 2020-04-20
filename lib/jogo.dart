import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          Padding(
            child: Text("Escolha do App:", textAlign: TextAlign.center, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,

            )),
            padding: EdgeInsets.fromLTRB(0, 30, 0, 20),

          ),
          Image.asset("assets/padrao.png"),
          Padding(
            child: Text("Escolha uma opção abaixo::", textAlign: TextAlign.center, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,

            )),
            padding: EdgeInsets.fromLTRB(0, 25, 0, 25),

          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Image.asset("assets/papel.png", height: 90,),
              Image.asset("assets/tesoura.png", height: 90),
              Image.asset("assets/pedra.png", height: 90)
            ],
          )


        ],
      ) ,
    )
    ;
  }
}
