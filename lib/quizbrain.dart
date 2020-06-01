import 'package:quizller/questions.dart';

class QuizBrain{
   
   int _questionNumber=0;

    List<Question> _questionBank=[
    Question(q: "sun rises in east", a: true),
    Question(q: "sun sets in east", a: false),
    Question(q: "Apple colour is yellow", a: false),
    Question(q: "Orange is red", a: false),
    Question(q: "Mosquito is not flies", a: false),
    Question(q: "Sun rises at night", a: false),
  ];

   void nextQuestion(){
     if (_questionNumber< _questionBank.length-1){
       _questionNumber++;
     }
    
   }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
}

