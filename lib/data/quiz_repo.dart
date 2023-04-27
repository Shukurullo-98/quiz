import '../model/quiz_data.dart';

class QuizRepository {
  static List<QuizData> getEnglishQuiz() {
    List<QuizData> test = [];
    for (int i = 0; i < 10; i++) {
      test.add(QuizData("Question $i", "A. variant1", "B. Variant 2",
          "C. Variant 3", "D. Variant 4", "A"));
    }
    return test;
  }

  static List<QuizData> getMathQuiz() {
    List<QuizData> test = [];
    for (int i = 0; i < 12; i++) {
      test.add(QuizData("Question $i", "A. variant1", "B. Variant 2",
          "C. Variant 3", "D. Variant 4", "A"));
    }
    return test;
  }
}
