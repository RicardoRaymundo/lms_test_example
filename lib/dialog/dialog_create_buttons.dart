import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lms_test_example/dialog/dialog_test_well_done.dart';
import 'package:lms_test_example/resource/test_alternative.dart';

/// Classe especializada em criar os botões do teste
class DialogCreateButtons extends StatelessWidget {
  List<TestAlternative> data;
  String correct;
  final void Function(bool) onPressed;

  DialogCreateButtons({
    this.data,
    this.correct,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> result = [];

    /// Transforma item o array json 'alternatives' em uma List<Widget>
    /// Para cada item é criado um botão de alternativa de teste
    this.data.forEach((item) {
      result.add(buttonAlternative(context: context, id: item.id, title: item.title));
    });

    /// Implementa a lista de botões
    return Column(
      children: result,
    );
  }

  /// Método que cria os botões de alternativa de teste
  Widget buttonAlternative({BuildContext context, String id, String title}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.5, horizontal: 35.0),
      width: double.infinity,
      child: RaisedButton(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.button,
          ),
        ),
        onPressed: () {
          Navigator.of(context).pop();
          this._checkAnswer(context, id);
        },
      ),
    );
  }

  /// Verifica se o usuário acertou a resposta
  void _checkAnswer(BuildContext context, String id) {
    this.onPressed(id == this.correct);
  }
}
