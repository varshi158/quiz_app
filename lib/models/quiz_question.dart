// contains question blue print

class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List <String> answers;

  List <String> getShuffledAnswers() {
    // create a new list based on the previous original list
    // chaining - we're calling a method on the result of calling 
    // another method
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}