import 'package:calculator/custom_widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int firstnum = 0;
  int secondnum = 0;
  String history = '';
  String textTodisplay = '';
  String result = '';
  String operation = '';
  void btnclick(String val) {
    print(val);
    if (val == 'C') {
      textTodisplay = '';
      firstnum = 0;
      secondnum = 0;
      result = '';
    } else if (val == 'AC') {
      textTodisplay = '';
      firstnum = 0;
      secondnum = 0;
      result = '';
      history = '';
    } else if (val == '+/-') {
      if (textTodisplay[0] != '-') {
        result = '-' + textTodisplay;
      } else {
        result = textTodisplay.substring(1);
      }
    } else if (val == '<') {
      result = textTodisplay.substring(0, textTodisplay.length - 1);
    } else if (val == '+' || val == '-' || val == '/' || val == 'X') {
      firstnum = int.parse(textTodisplay);
      result = '';
      operation = val;
    } else if (val == '=') {
      secondnum = int.parse(textTodisplay);
      if (operation == '+') {
        result = (firstnum + secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '-') {
        result = (firstnum - secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == 'X') {
        result = (firstnum * secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '/') {
        result = (firstnum / secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
    } else {
      result = int.parse(textTodisplay + val).toString();
    }
    setState(() {
      textTodisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Calculator")),
        ),
        backgroundColor: Color(0xFF28527a),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                        fontSize: 24, color: Color(0x66FFFFFF)),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    textTodisplay,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(
                    text: 'AC',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFF8ac4d0,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                  Buttons(
                    text: 'C',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFF8ac4d0,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                  Buttons(
                    text: '<',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFFf4d160,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                  Buttons(
                    text: '/',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFFf4d160,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(
                    text: '9',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFF8ac4d0,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                  Buttons(
                    text: '8',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFF8ac4d0,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                  Buttons(
                    text: '7',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFF8ac4d0,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                  Buttons(
                    text: 'X',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFFf4d160,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(
                    text: '6',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFF8ac4d0,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                  Buttons(
                    text: '5',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFF8ac4d0,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                  Buttons(
                    text: '4',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFF8ac4d0,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                  Buttons(
                    text: '-',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFFf4d160,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(
                    text: '3',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFF8ac4d0,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                  Buttons(
                    text: '2',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFF8ac4d0,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                  Buttons(
                    text: '1',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFF8ac4d0,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                  Buttons(
                    text: '+',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFFf4d160,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(
                    text: '+/-',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFF8ac4d0,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                  Buttons(
                    text: '0',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFF8ac4d0,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                  Buttons(
                    text: '00',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFF8ac4d0,
                    textsize: 20.0,
                    callback: btnclick,
                  ),
                  Buttons(
                    text: '=',
                    textcolor: 0xFF000000,
                    fillcolor: 0xFFf4d160,
                    callback: btnclick,
                    textsize: 20.0,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
