import 'package:guiz_app/main.dart';
import 'package:guiz_app/models/question_answers_model.dart';

class QuizListUtil {
  int index = 0;
  List<QuestionAnswersModel> suroolorjooptor = [
    QuestionAnswersModel(
        suroolor: 'Кыргызстандын президенти Жеенбековбу?', jooptor: false),
    QuestionAnswersModel(
        suroolor: ' Ош шаары Бишкеке карайбы?', jooptor: false),
    QuestionAnswersModel(
        suroolor: 'Баткен Айгул гулунун борборубу?', jooptor: true),
    QuestionAnswersModel(
        suroolor: 'Кыргызстандын борбору Таласпы?', jooptor: false),
    QuestionAnswersModel(
        suroolor: 'Кыргызстанда 7 область барбы?', jooptor: true),
  ];

  String? suroonuAlipKel() {
    if (index < suroolorjooptor.length) {
      return suroolorjooptor[index].suroolor;
    } else {
      return '';
    }
  }

  bool? jooptuAlipKel() {
    if (index < suroolorjooptor.length) {
      return suroolorjooptor[index].jooptor;
    } else {
      return false;
    }
  }

  void reset() {
    index = 0;
  }

  void otkoz() {
    index++;
  }
}

final QuizListUtil quizListUtil = QuizListUtil();
