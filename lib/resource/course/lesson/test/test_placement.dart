
import 'package:lms_test_example/resource/course/lesson/test/test_alternative.dart';

class TestPlacement {
  String id;
  String title;
  String correct;
  int score;
  List<TestAlternative> alternatives;

  TestPlacement(Map<String, dynamic> data) {
    this._config(data);
  }

  void _config(Map<String, dynamic> data) {
    int lenAlternatives = data['alternatives'].length;

    // Converte o List<Map<String, dynamic> em uma List<TestPlacement>.
    final List<TestAlternative> listData = List.generate(lenAlternatives, (i) {
      return TestAlternative.generate(data['alternatives'][i]);
    });

    this.id = data['id'] as String;
    this.title = data['title'] as String;
    this.correct = data['correct'] as String;
    this.score = data['score'] as int;
    this.alternatives = listData;
  }

  factory TestPlacement.generate(Map<String, dynamic> data) {
    return TestPlacement(data);
  }
}
