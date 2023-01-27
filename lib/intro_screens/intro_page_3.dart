import 'package:essivi_app/components/const.dart';
import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
      height: 500,
      padding: EdgeInsets.only(top: 50 ),
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Image.asset(
             belImage,
            ),
            Text(
              'LET\'S GO ',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue),
            ),
              Text('..',style: TextStyle(color: Colors.grey.shade400))
            ],
          ),
        ));
  }
}
