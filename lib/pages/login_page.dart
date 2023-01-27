import 'package:essivi_app/components/colors.dart';
import 'package:essivi_app/components/const.dart';
import 'package:essivi_app/components/my_button.dart';
import 'package:essivi_app/components/mytext_field.dart';
import 'package:essivi_app/components/square_tile.dart';
import 'package:essivi_app/pages/gestionn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void Connexion() {}

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(height);
    print(width);
    print(height * 0.50);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                bgImage,
                height: height * 0.40,
                width: width,
                fit: BoxFit.cover,
              ),
              Container(
                height: height * 0.42, width: width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        stops: [0.3, 0.7],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.white])),
                //color: Colors.blue.withOpacity(0.5),
              ),
              Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: Center(
                    child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                      text: appname + "\n",
                      children: [
                        TextSpan(
                            text: slogan,
                            style: TextStyle(color: Colors.grey, fontSize: 15))
                      ]),
                )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 20.0),
            child: Container(
              child: Text(
                "  $logstring  ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [primaryColor.withOpacity(0.3), Colors.transparent],
                  ),
                  border:
                      Border(left: BorderSide(color: primaryColor, width: 5))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue)),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.lightBlue,
                  ),
                  labelText: 'ADRESSE EMAIL',
                  labelStyle: TextStyle(color: Colors.lightBlue, fontSize: 16)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue)),
                prefixIcon: Icon(
                  Icons.lock_open,
                  color: Colors.lightBlue,
                ),
                labelText: 'MOT DE PASSE',
                labelStyle: TextStyle(color: Colors.lightBlue, fontSize: 16),
              ),
            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    forgetext,
                    style: TextStyle(color: Colors.black),
                  ))),
          Center(
            child: SizedBox(
              height: height * 0.08,
              width: width - 30,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => Gestionn())));
                },
                child: Text('Se Connecter',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Colors.white,
                        letterSpacing: 0.5)),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.white)))),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Pas de Compte?"),
            TextButton(
                onPressed: () {},
                child: Text("Creer un Compte",
                    style: TextStyle(color: Colors.black, fontSize: 16)))
          ]),
        ],
      )),
    );
    // Scaffold(
    //   backgroundColor: Colors.grey[100],
    //   appBar: AppBar(
    //     backgroundColor: Colors.deepPurple[100],
    //     title: Text('Login Page'),
    //     centerTitle: true,
    //     elevation: 4,
    //     titleSpacing: 0,
    //     flexibleSpace: Container(
    //       //decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.blue,Colors.deepOrange])),
    //       color: Colors.deepOrange,
    //     ),

    //   ),
    //   body: SingleChildScrollView(
    //     child: SafeArea(
    //       child: Center(
    //         child:
    //             Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    //           SizedBox(
    //             height: 50.0,
    //           ),
    //           Icon(
    //             Icons.lock,
    //             size: 100,
    //           ),
    //           SizedBox(
    //             height: 50.0,
    //           ),
    //           Text(
    //             'Bienvenue',
    //             style: TextStyle(
    //               fontSize: 16,
    //               color: Colors.grey[700],
    //             ),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           MytextField(
    //             controller: usernameController,
    //             hintext: 'Pseudo',
    //             obscureText: false,
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           MytextField(
    //             controller: passwordController,
    //             hintext: 'Mot de passe',
    //             obscureText: true,
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 25.0),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.end,
    //               children: [
    //                 Text(
    //                   'Mot de passe oublié?',
    //                   style: TextStyle(color: Colors.grey[600]),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(
    //             height: 25,
    //           ),
    //           MyButton(
    //             onTap: () {
    //               Navigator.push(context, MaterialPageRoute(
    //                 builder: ((context) {
    //                   return Gestionn();
    //                 }),
    //               ));
    //             },
    //           ),
    //           SizedBox(
    //             height: 25,
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 25.0),
    //             child: Row(
    //               children: [
    //                 Expanded(
    //                   child: Divider(
    //                     thickness: 0.5,
    //                     color: Colors.grey[400],
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.symmetric(horizontal: 10.0),
    //                   child: Text(
    //                     'Ou Continue avec ',
    //                     style: TextStyle(color: Colors.grey[700]),
    //                   ),
    //                 ),
    //                 Expanded(
    //                   child: Divider(
    //                     thickness: 0.5,
    //                     color: Colors.grey[400],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(
    //             height: 50,
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               SquareTile(imagePath: 'images/google.png'),
    //               SizedBox(
    //                 width: 25,
    //               ),
    //               SquareTile(imagePath: 'images/apple.png')
    //             ],
    //           ),
    //           SizedBox(
    //             height: 50,
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Text(
    //                 'Pas menbre?',
    //                 style: TextStyle(color: Colors.grey[700]),
    //               ),
    //               SizedBox(
    //                 width: 4,
    //               ),
    //               Text(
    //                 'Enregistrer maintenant',
    //                 style: TextStyle(
    //                     color: Colors.blue, fontWeight: FontWeight.bold),
    //               )
    //             ],
    //           )
    //         ]),
    //       ),
    //     ),
    //   ),
    // );
  }
}
