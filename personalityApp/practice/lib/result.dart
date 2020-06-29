import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);

  String get resultPhrase{
    String resultText;

    if(resultScore <= 8){
      resultText='you are awsome and innocent';
    }else if(resultScore <=12){
      resultText='pretty likeble';
    }else if(resultScore <=16){
      resultText='you are ... stranger';
    }else{
      resultText='you are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase,style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
          FlatButton(child: Text("restart the quiz"),onPressed: resetHandler,textColor: Colors.blue,),
        ],
      ),
    );
  }
}