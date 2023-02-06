import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/Navbar.dart';

class Gestionn extends StatefulWidget {
  @override
  _GestionnState createState() => _GestionnState();
}

class _GestionnState extends State<Gestionn> {
  final double size = 30;
  static const double maxSize = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(title: Text('side'),),
      body: Container(
        color: Colors.grey[300],
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            _top(),
            SizedBox(
              height: 20.0,
            ),
            Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(

                        // child: SingleChildScrollView(
                        //   scrollDirection: Axis.vertical,
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       Text(
                        //         'INFORMATIONS',
                        //         style: TextStyle(
                        //             color: Colors.white,
                        //             fontSize: 18,
                        //             fontWeight: FontWeight.bold),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // alignment: Alignment.centerRight,
                        // width: maxSize,
                        // margin: EdgeInsets.symmetric(horizontal: 30),
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(20),
                        //   color: Colors.lightBlue,
                        ),
                    //     padding: EdgeInsets.all(40),
                    //   ),
                    //   Container()
                  ],
                )),
            Container(
              decoration: BoxDecoration(
                //image: DecorationImage(image: AssetImage('assets/eauu.jpg'),fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlue,
              ),
              margin: EdgeInsets.only(bottom: 50),
              child: Text(
                'INFORMATIONS',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),

              width: 20,

              padding: EdgeInsets.all(40),
              //margin: EdgeInsets.symmetric(vertical: 8.0),
              alignment: Alignment.topCenter,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                title: Text('Tile 0: basic'),
                subtitle: Text('commande n°1'),
                trailing: Icon(Icons.arrow_forward_ios),
                leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/flatten.jpg',
                    ),
                    backgroundColor: Colors.lightBlue),
                enabled: false,
                onTap: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                title: Text('Tile 0: basic'),
                subtitle: Text('commande n°2'),
                trailing: Icon(Icons.arrow_forward_ios),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/flatten.jpg',
                  ),
                ),
                onTap: (() {}),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                title: Text('Tile 0: basic'),
                subtitle: Text('commande n°3'),
                trailing: Icon(Icons.arrow_forward_ios),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/flatten.jpg',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                title: Text('Tile 0: basic'),
                subtitle: Text('commande n°4'),
                trailing: Icon(Icons.arrow_forward_ios),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/flatten.jpg',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                title: Text('Tile 0: basic'),
                subtitle: Text('commande n°5'),
                trailing: Icon(Icons.arrow_forward_ios),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/flatten.jpg',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                title: Text('Tile 0: basic'),
                subtitle: Text('commande n°6'),
                trailing: Icon(Icons.arrow_forward_ios),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/flatten.jpg',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                title: Text('Tile 0: basic'),
                subtitle: Text('commande n°7'),
                trailing: Icon(Icons.arrow_forward_ios),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/flatten.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _top() {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/eau.jpg'), fit: BoxFit.cover),
          color: Colors.lightBlue,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0))),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  // CircleAvatar(
                  //   backgroundImage: AssetImage("assets/OUAd.jpg"),
                  // ),
                  // SizedBox(
                  //   width: 10.0,
                  // ),
                  // Text(
                  //   'Hi,Ouadal ',
                  //   style: TextStyle(color: Colors.white),
                  // )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ))
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Recherche",
                fillColor: Colors.white,
                filled: true,
                suffixIcon: Icon(
                  Icons.filter_list,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 16)),
          )
        ],
      ),
    );
  }
}
