import 'package:flutter/material.dart';
import 'package:messio/pages/ConversationPageList.dart';

void main() => runApp(Messio());

class Messio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messio',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ConversationPageList(),
    );
  }
}