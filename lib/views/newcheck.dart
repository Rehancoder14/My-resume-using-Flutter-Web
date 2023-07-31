import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';

class NewCheck extends StatefulWidget {
  const NewCheck({super.key});

  @override
  State<NewCheck> createState() => _NewCheckState();
}

class _NewCheckState extends State<NewCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/peak.jpg'), fit: BoxFit.cover)),
      ),
    );
  }
}
