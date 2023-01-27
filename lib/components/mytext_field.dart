import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MytextField extends StatelessWidget {
  final controller;
  final String hintext;
  final bool obscureText;
  const MytextField(
      {super.key,
      required this.controller,
      required this.hintext,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400)),
              fillColor: Colors.grey.shade200,
              filled: true,
              hintText: hintext,
              hintStyle: TextStyle(color: Colors.grey[500])),
              
        ),
        );
  }
}
