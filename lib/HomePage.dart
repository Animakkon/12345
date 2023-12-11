import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _giveVerse = true;
  //todo: описать задание, найти материал под работу
  @override
  Widget build(BuildContext context) {
    //todo: Stack?
    return Scaffold(
        body:  Container(
          alignment: AlignmentDirectional.center,
          child: Column(
            children: [
              Text(_giveVerse ? "светло!" : "темно :("),
              Switch(
                  value: _giveVerse,
                  onChanged: (bool newValue) => {
                    setState(() {
                      _giveVerse = !_giveVerse;
                      _giveVerse
                          ? AdaptiveTheme.of(context).setLight()
                          : AdaptiveTheme.of(context).setDark();
                    }),
                  })
            ],
          ),
        )

    );
  }
}
