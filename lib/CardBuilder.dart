import 'package:flutter/material.dart';


class CardBuilder extends StatelessWidget {
  final String textData;
  final IconData ico;
  final Function fun;

  CardBuilder({this.ico, this.textData,this.fun});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          ico,
          color: Colors.teal,
        ),
        title: Text(
          textData,
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            fontSize: 20.0,
            color: Colors.teal.shade900,
          ),
        ),
        onTap: ()=>fun() ,
      ),
    );
  }
}
