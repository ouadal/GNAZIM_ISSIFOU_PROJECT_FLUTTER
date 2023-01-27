import 'package:flutter/material.dart';

class CustomerModel{
  int id;
  String LastName;
  String FirstName;
  String Adresse;
  int Phone;


  CustomerModel({
    required this.id,
    required this.LastName,
    required this.FirstName,
    required this.Adresse,
    required this.Phone,
  });
}
