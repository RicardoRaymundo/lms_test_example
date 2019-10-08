import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lms_test_example/app/app_behavior.dart';
import 'package:lms_test_example/dialog/dialog_test_main.dart';
import 'package:lms_test_example/theme/theme_config.dart';
import 'package:lms_test_example/theme/theme_select.dart';
import 'package:lms_test_example/ui/ui_label.dart';

void main() {
  //Configura a orientação inical da aplicação
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(

    /// Configura o tema inical da aplicação
    ThemeConfig(
      initialTheme: ThemeAspect.DARK,
      child: Main(),
    ),
  );
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: UILabel.APP_TITLE,
      theme: ThemeConfig.of(context),
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        /// Retira effeito de 'barriga' no fim de scroll
        return ScrollConfiguration(
          behavior: AppBehavior(),
          child: child,
        );
      },
      home: _MainPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class _MainPage extends StatefulWidget {
  _MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<_MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://revistastart.com/images/noticias/88/e521e3ecbff9ec15a95f4bd19aa14012.jpg'),
            fit: BoxFit.fitHeight
          )
        ),
        child: DialogTestMain(),
      ),
    );
  }
}
