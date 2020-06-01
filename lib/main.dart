import 'package:flutter/material.dart';
import 'package:quizller/quizbrain.dart';

QuizBrain quizBrain = QuizBrain();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent[700],
          title: Text("Quiz App", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
        ),
        backgroundColor: Colors.black,
        body: QuizPage(),
      ),
    );
  }
}

class QuizPage extends StatefulWidget{
  @override

  _QuizPage createState() => _QuizPage();
}

class _QuizPage extends State<QuizPage>{

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: GestureDetector(
              child: Container(
                alignment: FractionalOffset(0.5,0.5),
                width: 140,
                height: 4,
                color: Colors.green,

                 child: Text("True", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
               ),
              onTap: (){

              bool correctAnswer=quizBrain.getCorrectAnswer();

              if (correctAnswer==false){
                print("correct");
              }
              else{
                print("not correct");
              }
                setState(() {
                  quizBrain.nextQuestion();
                });
            },

               ),
          ),
        ),
        SizedBox(height: 10,),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: GestureDetector(
              child: Container(
                
                alignment: FractionalOffset(0.5,0.5),
                width: 140,
                height: 4,
                color: Colors.red,

                 child: Text("False", style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.bold),),
               ),
            onTap: (){

              bool correctAnswer=quizBrain.getCorrectAnswer();

              if (correctAnswer==false){
                print("correct");
              }
              else{
                print("not correct");
              }
                setState(() {
                  quizBrain.nextQuestion();
                });
            },
            ),
          ),
        ),
      ],
    );
  }
}