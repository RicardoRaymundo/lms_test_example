
import 'package:lms_test_example/resource/course/lesson/lesson_activity.dart';
import 'package:lms_test_example/resource/course/lesson/test/test_final.dart';
import 'package:lms_test_example/resource/course/lesson/test/test_placement.dart';

class Lesson {
  String id;
  String title;
  String description;
  List<LessonActivity> activities;
  List<TestPlacement> placementTest;
  List<TestFinal> test_final;

  Lesson(Map<String, dynamic> data) {
    this._config(data);
  }

  void _config(Map<String, dynamic> data) {
    int lenActivities = data['activities'].length;
    int lenPlacementTest = data['test_placement'].length;
    int lenFinalTest = data['test_final'].length;

    // Converte o List<Map<String, dynamic> em uma List<LessonActivity>.
    final List<LessonActivity> listDataActivity = List.generate(lenActivities, (i) {
      return LessonActivity.generate(data['activities'][i]);
    });

    // Converte o List<Map<String, dynamic> em uma List<TestPlacement>.
    final List<TestPlacement> listDataPlacementTest = List.generate(lenPlacementTest, (i) {
      return TestPlacement.generate(data['test_placement'][i]);
    });

    // Converte o List<Map<String, dynamic> em uma List<TestPlacement>.
    final List<TestFinal> listDataFinalTest = List.generate(lenFinalTest, (i) {
      return TestFinal.generate(data['test_final'][i]);
    });

    this.id = data['id'] as String;
    this.title = data['title'] as String;
    this.description = data['description'] as String;
    this.activities = listDataActivity;
    this.placementTest = listDataPlacementTest;
    this.test_final = listDataFinalTest;
  }

  factory Lesson.generate(Map<String, dynamic> data) {
    return Lesson(data);
  }
}
