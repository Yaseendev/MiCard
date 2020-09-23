import 'package:flutter/material.dart';
import './CardBuilder.dart';
import 'package:intent/intent.dart' as android_intent;
import 'package:intent/action.dart' as android_action;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Card',
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/me.jpg'),
              ),
              Text(
                'Yaseen Hasanen',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Software Engineer',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              CardBuilder(
                  ico: Icons.phone,
                  textData: '+963 992 177 332',
                  fun: () {
                    android_intent.Intent()
                      ..setAction(android_action.Action.ACTION_DIAL)
                      ..setData(Uri(scheme: 'tel', path: '+963 992 177 332'))
                      ..startActivity().catchError((e) => print(e));
                  }),
              CardBuilder(
                  ico: Icons.email,
                  textData: 'yaseen.hasanen@gmail.com',
                  fun: () {
                    android_intent.Intent()
                      ..setAction(android_action.Action.ACTION_VIEW)
                      ..setData(Uri(
                          scheme: 'mailto', path: 'yaseen.hasanen@gmail.com'))
                      ..startActivity().catchError((e) => print(e));
                  }),
            ],
          )),
        ));
  }
}
