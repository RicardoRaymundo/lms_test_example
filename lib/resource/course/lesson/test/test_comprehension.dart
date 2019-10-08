
import 'package:lms_test_example/resource/course/lesson/test/test_alternative.dart';

class TestComprehension {
  String id;
  String title;
  String correct;
  int score;
  List<TestAlternative> alternatives;

  TestComprehension(Map<String, dynamic> data) {
    this._config(data);
  }

  void _config(Map<String, dynamic> data) {
    int lenAlternatives = data['alternatives'].length;

    // Converte o List<Map<String, dynamic> em uma List<TestComprehension>.
    final List<TestAlternative> listData = List.generate(lenAlternatives, (i) {
      return TestAlternative.generate(data['alternatives'][i]);
    });

    this.id = data['id'] as String;
    this.title = data['title'] as String;
    this.correct = data['correct'] as String;
    this.score = data['score'] as int;
    this.alternatives = listData;
  }

  factory TestComprehension.generate(Map<String, dynamic> data) {
    return TestComprehension(data);
  }
}
