import 'package:essivi_app/components/const.dart';
import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
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
               baImage,
              ),
              Text(
                'GET YOUR PACKET  ',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue),
              ),
                Text('Pris en charge facile du logiciel..',style: TextStyle(color: Colors.grey.shade400))
            ],
          ),
        ));
  }
}
