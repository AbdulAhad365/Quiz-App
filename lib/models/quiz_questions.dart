class QuizQuestions {
  QuizQuestions(this.question, this.options);

  final String question;
  final List<String> options;
  List<String> ShuffledList() {
    final shuffle_list = List.of(options);
    shuffle_list.shuffle();
    return shuffle_list;
  }
}
