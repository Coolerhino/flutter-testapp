import 'package:flutter/material.dart';
import 'package:testapp/screens/home/text_section.dart';

class LocationDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          TextSection(Colors.lightGreen),
          TextSection(Colors.amber),
          TextSection(Colors.yellowAccent),
        ]
      )
    );
  }
}