import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lms_test_example/dialog/dialog_create_buttons.dart';
import 'package:lms_test_example/resource/test_alternative.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

/// Classe que cria a caixa do teste
class DialogTestWrong extends StatelessWidget {
  double completed;
  int index;
  final Map<String, Object> data;

  DialogTestWrong({this.index, this.completed, this.data});

  /// Método que retorna uma cor de acordo com o valor recebido
  Color percentCompleted(double value) {
    var color;
    if (value > 0.70) {
      color = Colors.greenAccent;
    } else if (value > 0.35) {
      color = Colors.amberAccent;
    } else if (value < 0.35) {
      color = Colors.redAccent;
    }
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: new BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: CircularPercentIndicator(
                        radius: 25.0,
                        lineWidth: 3.0,
                        percent: this.completed,
                        center: Text(
                          (this.index + 1).toString(),
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
                        ),

                        /// Recebe a cor deste método, de acordo com a variável completed
                        progressColor: percentCompleted(this.completed),

                        /// TODO :: Trocar pela cor do tema
                        backgroundColor: Color(0xff222222),
                      ),
                    ),
                    Text(
                      'Teste de CompreensãoERRADOOO',

                      /// TODO :: Definir qual será o tema desse texto
                      style: Theme.of(context).primaryTextTheme.body1,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      this.data['title'],
                      style: Theme.of(context).textTheme.button,
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    /// Cria botões do teste em uma classe especializada
                    DialogCreateButtons(data: this._createListAlternatives(), correct: this.data['correct'],),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<TestAlternative> _createListAlternatives() {
    print((this.data['alternatives'] as List)[1]);
    return [
      TestAlternative((this.data['alternatives'] as List)[0]),
      TestAlternative((this.data['alternatives'] as List)[1]),
      TestAlternative((this.data['alternatives'] as List)[2]),
      TestAlternative((this.data['alternatives'] as List)[3]),
    ];
  }
}
