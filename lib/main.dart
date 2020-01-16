import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {   

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionsIndex=0;

  void _answerQuestion()
  {
    setState(() {
      questionsIndex++;
    });
  }
  

  @override
  Widget build(BuildContext context) {

    var questions=["What is your name?","What is your pet name?"];
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("APP",style: TextStyle(color: Colors.black),),backgroundColor: Colors.white,),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Question(questions[questionsIndex]),
            Answer(Colors.red,"Button1",_answerQuestion),
            Answer(Colors.green,"Button2",_answerQuestion),
            Answer(Colors.blue,"Button3",_answerQuestion),

          ],
        ),
      )
    );
  }
}

