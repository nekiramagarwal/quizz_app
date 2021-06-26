class Question {
  //class
  String questiontext=''; //value of variable can't be nullable
  bool questionanswer=true;//value of variable can't be nullable
  //Question({required this.questiontext, required this.questionanswer});
  Question({required String q, required bool a}){  //function
    //required keyword use because value of variable can't be nullable
    questiontext=q;
    questionanswer=a;
 }
}