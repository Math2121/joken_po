import 'package:flutter/material.dart';
import 'dart:math';
class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
  optionSelect(String choice){

  }
}

class _JogoState extends State<Jogo> {
  var _imagemApp = AssetImage("assets/padrao.png");
  var _winner = "Escolha uma opção abaixo:";
  _optionSelect(String choice){
    var options = ["pedra","papel","tesoura"];
    var number = Random().nextInt(3);
    var op1 = options[number];

    switch(op1){
      case "pedra":
      setState(() {
        this._imagemApp = AssetImage("assets/pedra.png");
      });
      break;

      case "tesoura":
        setState(() {
          this._imagemApp = AssetImage("assets/tesoura.png");
        });
        break;

      case "papel":
        setState(() {
          this._imagemApp = AssetImage("assets/papel.png");
        });
        break;

    }


    if(
    (choice == "pedra" && op1 == "tesoura") ||
        (choice == "tesoura" && op1 == "papel") ||
          (choice == "papel" && op1 == "pedra")

    ){
      setState(() {
        this._winner = "Você ganhou !";
      });
    }else if(
    (choice == "tesoura" && op1 == "papel") ||
        (choice == "papel" && op1 == "tesoura") ||
          (choice == "pedra" && op1 == "papel")
    ){
      setState(() {
        this._winner = "Você perdeu !";
      });
    } else{
      setState(() {
        this._winner = "Empatamos !";
      });
    }

  }


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
          Image(image: this._imagemApp,height: 90,),
          Padding(
            child: Text(this._winner , textAlign: TextAlign.center, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,

            )),
            padding: EdgeInsets.fromLTRB(0, 25, 0, 25),

          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap:() => _optionSelect("pedra") ,
                child:  Image.asset("assets/pedra.png", height: 90,) ,
              ),
              GestureDetector(
                onTap:() => _optionSelect("tesoura") ,
                child:  Image.asset("assets/tesoura.png", height: 90,) ,
              ),
              GestureDetector(
                onTap:() => _optionSelect("papel") ,
                child:  Image.asset("assets/papel.png", height: 90,) ,
              ),
        /*
              Image.asset("assets/papel.png", height: 90,),
              Image.asset("assets/tesoura.png", height: 90),
              Image.asset("assets/pedra.png", height: 90)

         */
            ],
          )


        ],
      ) ,
    )
    ;
  }
}
