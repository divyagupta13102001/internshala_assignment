import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:internshala_assignment/models/internship_class.dart';
import 'package:internshala_assignment/screens/spashScreen.dart';
import 'package:internshala_assignment/widgets/opening.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}
