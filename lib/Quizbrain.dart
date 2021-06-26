import 'Question.dart';

class Quizbrain {
  int _questionnumber = 0;
  List<Question>_questionbank = [ //there question is type of object.
    Question(q: 'The slug\' blood is green.', a: true),
    Question(q: 'Approximately one quater of human bones are in the feet.', a: true),
    Question(q: 'The letter H is between letters G and J on a keyboard.', a: true),
    Question(q: 'The moon is just 50 percent of the mass of Earth.', a: false),
    Question(q: 'A cow gives nearly 200,000 glasses of milk in a lifetime.', a: true),
    Question(q: 'Watching horror movies has no reaction to body.', a: false),
    Question(q: 'A double rainbow is a mirror image of the first rainbow.', a: true),
    Question(q: 'Venus is the hottest planet in the solar system', a: true),
    Question(q: 'An octopus has three hearts', a:true ),
    Question(q:'Thomas Edison discovered gravity' , a:false ),
    Question(q:'Coffee is made from berries' , a:true ),
    Question(q:'Alaska is the biggest American state in square miles' , a:true ),

  ];

  void nextquestion() {
    if (_questionnumber < _questionbank.length - 1) {
      _questionnumber++;
    }
    print('$_questionnumber');
    print('${_questionbank.length}');
  }

  String getQuestiontext() {
    return _questionbank[_questionnumber].questiontext;
  }

  bool getCorrectanswer() {
    return _questionbank[_questionnumber].questionanswer;
  }

//TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionnumber >= _questionbank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

//TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionnumber = 0;
  }
}