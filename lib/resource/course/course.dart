import 'package:lms_test_example/resource/course/lesson/lesson.dart';

class Course {
  String id;
  String title;
  String description;
  String author;
  String authorInfo;
  int year;
  List<Lesson> lessons;

  Course(Map<String, dynamic> data) {
    this._config(data);
  }

  void _config(Map<String, dynamic> data) {
    int len = data['lessons'].length;

    // Converte o List<Map<String, dynamic> em uma List<Lesson>.
    final List<Lesson> listData = List.generate(len, (i) {
      return Lesson.generate(data['lessons'][i]);
    });

    this.id = data['id'] as String;
    this.title = data['title'] as String;
    this.description = data['description'] as String;
    this.author = data['author'] as String;
    this.authorInfo = data['author_info'] as String;
    this.year = data['year'] as int;
    this.lessons = listData;
  }

  factory Course.generate(Map<String, dynamic> data) {
    return Course(data);
  }
}
