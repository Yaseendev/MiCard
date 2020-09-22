import 'package:flutter/material.dart';
import 'package:intent/intent.dart' as android_intent;
import 'package:intent/action.dart' as android_action;

class CardBuilder extends StatelessWidget {
  final String textData;
  final IconData ico;

  CardBuilder({this.ico,this.textData});

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
                  onTap: () {android_intent.Intent()
                  ..setAction(android_action.Action.ACTION_CALL)
                  ..startActivityForResult().then(
                    (data) => print(data),
                    onError: (e) => print(e.toString()),
                  );},
                ),
              );
  }
}