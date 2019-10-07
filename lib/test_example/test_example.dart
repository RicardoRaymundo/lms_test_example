import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TestExample extends StatefulWidget {
  @override
  _TestExampleState createState() => _TestExampleState();
}

class _TestExampleState extends State<TestExample> {
  double completed = 0.80;
  int index = 0;

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
    final List<Map<String, Object>> alternatives = [
      {"id": "a", "title": "Para conhecer os autores que marcaram a História do mundo."},
      {"id": "b", "title": "Para conhecer novas histórias e ganhar mais cultura."},
      {"id": "c", "title": "Para conhecer os autores que revolucionaram a Literatura Brasileira. "},
      {"id": "d", "title": "Para conhecer nossos antepassados, nossa cultura e conhecer a nós mesmos."}
    ];

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

    return Center(
      child: RaisedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: new BorderRadius.all(Radius.circular(10.0))),
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
                                progressColor: percentCompleted(this.completed),
                                backgroundColor: Color(0xff222222),
                              ),
                            ),
                            Text(
                              'Teste de Nivelamento',
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
                              'O que é futurismo?',
                              style: Theme.of(context).textTheme.button,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            createTest(test),
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
            ),
          );
        },
        child: Text('ALERT DIALOG'),
      ),
    );
  }

  Widget buttonAlternative({String id, String title, String correct}) {
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
          print(correct == id);
          Navigator.of(context).pop();
        },
      ),
    );
  }

  Widget createTest(Map<String, Object> data) {
    List<Widget> result = [];

    (data['alternatives'] as List).forEach((item) {
      result.add(buttonAlternative(id: item['id'], title: item['title'], correct: data['correct']));
    });

    return Column(
      children: result,
    );
  }
}
