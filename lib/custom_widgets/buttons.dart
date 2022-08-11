import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  final String text;
  final int fillcolor;
  final int textcolor;
  final double textsize;
  final Function callback;

  const Buttons({
    Key? key,
    required this.text,
    required this.fillcolor,
    required this.textcolor,
    required this.textsize,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 70,
        height: 50,
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(fontSize: textsize),
            ),
          ),
          onPressed: () => (callback(text)),
          color: Color(fillcolor),
          textColor: Color(textcolor),
        ),
      ),
    );
  }
}
