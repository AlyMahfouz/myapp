import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectHandler;
  final String ansText;

  Answers(this.selectHandler, this.ansText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: (Colors.blue),
            onPrimary: (Colors.white),
            padding: EdgeInsets.symmetric(vertical: 11),
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        child: Text(ansText),
        onPressed: selectHandler,
      ),
    );
  }
}






// ElevatedButton(
//       child: Text('Button'),
//       onPressed: () {},
//       style: ElevatedButton.styleFrom({
//            Color primary, // set the background color 
//            Color onPrimary, 
//            Color onSurface, 
//            Color shadowColor, 
//            double elevation, 
//            TextStyle textStyle, 
//            EdgeInsetsGeometry padding, 
//            Size minimumSize, 
//            BorderSide side, 
//            OutlinedBorder shape, 
//            MouseCursor enabledMouseCursor, 
//            MouseCursor disabledMouseCursor, 
//            VisualDensity visualDensity, 
//            MaterialTapTargetSize tapTargetSize, 
//            Duration animationDuration, 
//            bool enableFeedback
//      }),
// ),