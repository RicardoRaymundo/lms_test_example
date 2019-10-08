import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lms_test_example/dialog/dialog_test_comprehension.dart';
import 'package:lms_test_example/dialog/dialog_test_well_done.dart';
import 'package:lms_test_example/dialog/dialog_test_wrong.dart';

class DialogTestMain extends StatelessWidget {
  double completed = 0.80;
  int index = 1;

  /// DATA que será passado para o componente que cria o teste
  final Map<String, Object> test = {
    "id": "2",
    "title": "Quantos movimentos literários existem?",
    "correct": "b",
    "score": 0,
    "alternatives": [
      {"id": "a", "title": "5 movimentos literários"},
      {"id": "b", "title": "10 movimentos literários"},
      {"id": "c", "title": "7 movimentos literários"},
      {"id": "d", "title": "2 movimentos literários"}
    ]
  };

  @override
  Widget build(BuildContext context) {

    void onPressed(bool value) {
      print('aaa');
      print(value);
      if (value) {
        print('resposta certa!');
        this._testWellDone(context);
      } else {
        print('resposta errada');
        this._testWrong(context);
      }
    }

    return Center(
      /// Botão que abre a o teste como uma caixa de diálogo quando pressionado
      child: RaisedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => DialogTestComprehension(
                    data: this.test,
                    index: this.index,
                    completed: this.completed,
                    onPressed: onPressed,
                  ));
        },
        child: Text('ALERT DIALOG'),
      ),
    );
  }

  void _testWellDone(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => DialogTestWellDone(
          data: this.test,
          index: this.index,
          completed: this.completed,
        ));
  }
  void _testWrong(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => DialogTestWrong(
          data: this.test,
          index: this.index,
          completed: this.completed,
        ));
  }
}
