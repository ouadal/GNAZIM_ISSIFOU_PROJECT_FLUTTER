import 'package:essivi_app/components/const.dart';
import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
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
              boImag,
            ),
            Text(
              'ORDER NOW ',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color:Colors.lightBlue),
            ),
            Text('salut soyez les bievenues..',style: TextStyle(color: Colors.grey.shade400),)
           
           
          ],
        ),
      ),
    );
  }
}
